require("rafaeljacov")
-- Lazy Nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require('lazy').setup({
    { import = 'plugins' },
    { import = 'plugins.lsp.00-init' }
})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Hyprlang LSP
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
    pattern = { "*.hl", "hypr*.conf", "keybinds.conf", "windowrules.conf" },
    callback = function(event)
        vim.lsp.start {
            name = "hyprls",
            cmd = { "hyprls" },
            root_dir = vim.fn.getcwd(),
        }
    end
})

-- Neovide
if vim.g.neovide then
    vim.g.neovide_scale_factor = 1.25
    local change_scale_factor = function(delta)
        vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
    end
    vim.keymap.set("n", "<C-=>", function()
        change_scale_factor(1.25)
    end)
    vim.keymap.set("n", "<C-->", function()
        change_scale_factor(1 / 1.25)
    end)

    vim.o.guifont = "JetBrainsMonoNL Nerd Font:h14:b"

    vim.g.neovide_padding_top = 20
    vim.g.neovide_padding_right = 10
    vim.g.neovide_padding_left = 10
end

-- Colorscheme
vim.cmd.colorscheme 'kanagawa'
