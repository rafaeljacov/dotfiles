return {

    'onsails/lspkind.nvim',
    'tpope/vim-fugitive',
    'nanotee/zoxide.vim',
    'windwp/nvim-ts-autotag',
    { 'RaafatTurki/hex.nvim',    opts = {} },
    { 'mvllow/modes.nvim',    opts = {} },
    { 'lewis6991/gitsigns.nvim', opts = {} },
    { 'numToStr/Comment.nvim',   opts = {} },
    {
        "smjonas/inc-rename.nvim",
        config = function()
            require("inc_rename").setup({})
            vim.keymap.set("n", "grn", ":IncRename ")
        end
    },
    {
        "rachartier/tiny-inline-diagnostic.nvim",
        event = "VeryLazy", -- Or `LspAttach`
        priority = 1000,    -- needs to be loaded in first
        config = function()
            require('tiny-inline-diagnostic').setup()
            vim.diagnostic.config({ virtual_text = false })
        end
    }
}
