lvim.builtin.indentlines.active = false

require('kanagawa').setup({
    compile = false,  -- enable compiling the colorscheme
    undercurl = true, -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true },
    statementStyle = { bold = false },
    typeStyle = {},
    transparent = true,    -- do not set background color
    dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
    terminalColors = true, -- define vim.g.terminal_color_{0,17}
    colors = {             -- add/modify theme and palette colors
        palette = {},
        theme = {
            all = {},
            lotus = {},
            dragon = {},
            wave = {
                syn = {
                    comment = "#545459",
                },
                ui = {
                    bg_p1     = "none",
                    bg_p2     = "#161618",
                    -- bg_dim    = "none",
                    bg_gutter = "none",
                    float     = {
                        bg = "none"
                    }
                }
            }
        },
    },
    -- overrides = function(colors) -- add/modify highlights
    --     return {}
    -- end,
    theme = "wave", -- Load "wave" theme when 'background' option is not set
    -- background = {     -- map the value of 'background' option to a theme
    --     dark = "wave", -- try "dragon" !
    --     light = "lotus"
    -- },
})
