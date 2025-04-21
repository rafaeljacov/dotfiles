return {
    -- LSP Support
    { 'neovim/nvim-lspconfig' },
    { 'williamboman/mason.nvim' },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            local lspconfig = require('lspconfig')

            -- Language Servers: (for Rust, see "plugins.rustaceanvim")
            -- mason-lspconfig
            local gopls = require("plugins.lsp.gopls")
            local emmet = require("plugins.lsp.emmet")
            -- lspconfig
            local nixd = require("plugins.lsp.nixd")

            -- add blink.cmp capabilities settings to lspconfig
            -- this should be executed before you configure any language server
            local lspconfig_defaults = lspconfig.util.default_config
            lspconfig_defaults.capabilities = vim.tbl_deep_extend(
                'force',
                lspconfig_defaults.capabilities,
                require('blink.cmp').get_lsp_capabilities()
            )

            -- Setup lsp using lspconfig
            lspconfig['lua_ls'].setup({}) -- use system installed lua_ls package for NixOS compat
            lspconfig.clangd.setup({})
            lspconfig.nixd.setup(nixd)

            -- Setup lsp using mason-lspconfig
            require('mason').setup({})
            require('mason-lspconfig').setup({
                automatic_installation = false,
                ensure_installed = {
                    'cssls',
                    'ts_ls',
                    'emmet_ls',
                    'html',
                    'htmx',
                    'eslint',
                    'templ',
                    'tailwindcss',
                    'gopls',
                    'pyright',
                    'bashls',
                    'tinymist',
                    'marksman'
                },
                handlers = {
                    function(server_name)
                        lspconfig[server_name].setup({})
                    end,
                    lua_ls = function()
                    end,
                    html = function()
                        lspconfig.html.setup({ filetypes = { 'html', 'templ' } })
                    end,
                    emmet_ls = function()
                        lspconfig.emmet_ls.setup(emmet)
                    end,
                    gopls = function()
                        lspconfig.gopls.setup(gopls)
                    end,
                    htmx = function()
                        lspconfig.htmx.setup({ filetypes = { 'html', 'templ' } })
                    end,
                },
            })
        end
    },
}
