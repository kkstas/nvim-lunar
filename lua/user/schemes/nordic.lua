local fg_dim_color = "#60728a"


require("nordic").setup({

    override = {

        WinSeparator         = { bg = "none", fg = "#263536" },

        ["@text.emphasis"]   = { fg = "#E7C173" },
        ["@text.strong"]     = { fg = "#80b3b2", bold = true },

        FoldColumn           = { bg = "none", fg = "#434C5E" },
        Folded               = { bg = "none" },
        -- Folded = { bg = "#242933" },

        Search               = { bg = "#30425a", bold = false },
        --- "LeapLabelPrimary", "LeapLabelSecondary", "LeapLabelSelected", "LeapMatch", "LeapBackdrop"
        Visual               = { bg = "#263536" },
        -- Visual = { bg = "#263536" },
        Comment              = { fg = fg_dim_color },
        NvimTreeRootFolder   = { fg = fg_dim_color },
        NvimTreeGitDirty     = { fg = fg_dim_color },
        NvimTreeGitNew       = { fg = fg_dim_color },
        NvimTreeGitDeleted   = { fg = fg_dim_color },
        NvimTreeGitStaged    = { fg = fg_dim_color },
        NvimTreeIndentMarker = { fg = fg_dim_color },


        Cursor           = {
            bg = "#eb6e46",
            fg = "#000000",
            bold = true,
        },

        LeapLabelPrimary = {
            fg = "#eb6e46",
            bg = "NONE",
            bold = false,
            italic = true,
        },

        MatchParen       = {
            fg = "#EBCB8B",
            bold = true,
            sp = "#EBCB8B",
        }
    },

    theme = "nordic", -- onedark | nordic
    leap = {
        dim_backdrop = true,
    },
    transparent_bg = true,
})
----------------------------
-- transparent lualine

local C = require 'nordic.colors'

-- -- Gdybyś chciał zmienić wygląd lualine (np. transparent background):
local colors = {
    darkgray = "#16161d",
    gray = "#727169",
    innerbg = nil,
    outerbg = "#16161D",
    normal = "#7e9cd8",
    insert = "#98bb6c",
    visual = "#ffa066",
    replace = "#e46876",
    command = "#e6c384",
}
lvim.builtin.lualine.options.theme = {
    terminal = {

        a = { bg = C.blue2, fg = C.black0, gui = 'bold' },
        b = { bg = C.gray1, fg = C.white1 },
        c = { bg = colors.innerbg, fg = C.white0 },
    },

    inactive = {
        a = { bg = C.gray2, fg = C.black0, gui = 'bold' },
        b = { bg = C.gray1, fg = C.white1 },
        c = { bg = colors.innerbg, fg = C.white0 },
    },
    visual = {
        a = { bg = C.red.bright, fg = C.black0, gui = 'bold' },
        b = { bg = C.gray1, fg = C.white1 },
        c = { bg = colors.innerbg, fg = C.white0 },
    },
    replace = {
        a = { bg = C.magenta.bright, fg = C.black0, gui = 'bold' },
        b = { bg = C.gray1, fg = C.white1 },
        c = { bg = colors.innerbg, fg = C.white0 },
    },
    normal = {

        a = { bg = C.orange.bright, fg = C.black0, gui = 'bold' },
        b = { bg = C.gray1, fg = C.white1 },
        c = { bg = colors.innerbg, fg = C.white0 },
    },
    insert = {
        a = { bg = C.green.bright, fg = C.black0, gui = 'bold' },
        b = { bg = C.gray1, fg = C.white1 },
        c = { bg = colors.innerbg, fg = C.white0 },
    },
    command = {
        a = { bg = C.cyan.bright, fg = C.black0, gui = 'bold' },
        b = { bg = C.gray1, fg = C.white1 },
        c = { bg = colors.innerbg, fg = C.white0 },
    },
}
