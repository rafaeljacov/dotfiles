return {
    'rebelot/kanagawa.nvim',
    opts = {
        compile = false,  -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = true,    -- do not set background color
        dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        colors = {             -- add/modify theme and palette colors
            palette = {},
            theme = {
                all = {
                    ui = {
                        bg_gutter = "none"
                    }
                },
                wave = {},
                lotus = {},
                dragon = {},
            },
        },
        overrides = function(colors)
            local theme = colors.theme
            local palette = colors.palette

            local borderColor = palette.oniViolet
            return {
                NormalFloat = { bg = "none" },
                FloatBorder = { fg = borderColor, bg = "none" },
                FloatTitle = { bg = "none" },

                -- Save an hlgroup with dark background and dimmed foreground
                -- so that you can use it where your still want darker windows.
                -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
                NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

                TelescopeTitle = { fg = theme.ui.special, bold = true },
                TelescopePromptNormal = { bg = "none" },
                TelescopePromptBorder = { bg = "none", fg = borderColor },
                TelescopeResultsNormal = { bg = "none" },
                TelescopeResultsBorder = { bg = "none", fg = borderColor },
                TelescopePreviewNormal = { bg = "none" },
                TelescopePreviewBorder = { bg = "none", fg = borderColor },

                BlinkCmpMenu = { bg = theme.ui.bg_m3 },
                BlinkCmpMenuSelection = { bg = palette.winterBlue },
                BlinkCmpDoc = { bg = theme.ui.bg_m3 },
                BlinkCmpScrollBarThumb = { bg = palette.waveAqua1 },
                BlinkCmpScrollBarGutter = { bg = theme.ui.bg_p1 },
            }
        end,
        theme = "wave",    -- Load "wave" theme
        background = {     -- map the value of 'background' option to a theme
            dark = "wave", -- try "dragon" !
            light = "lotus"
        },
    }
}
