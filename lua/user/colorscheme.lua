lvim.transparent_window = true
-- lvim.colorscheme = 'duskfox'
-- lvim.colorscheme = 'terafox'
lvim.colorscheme = 'nordic'
-- lvim.colorscheme = 'codedark'
-- lvim.colorscheme = 'nvcode'
-- lvim.colorscheme = 'tokyonight-storm'
-- lvim.colorscheme = 'tokyonight-night'
-- lvim.colorscheme = 'sonokai'
-- lvim.colorscheme = 'github_dark'
-- lvim.colorscheme = 'github_dark_colorblind'

if (lvim.colorscheme == 'sonokai') then
    -- vim.g.sonokai_style = 'andromeda'
    vim.g.sonokai_style = 'atlantis'
end

if (lvim.colorscheme == 'codedark') then
    vim.g.codedark_transparent = 1
end


if (lvim.colorscheme == 'nordic') then
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


            Cursor = {
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

            MatchParen = {
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
end

if (lvim.colorscheme == 'onedark') then
    require('onedark').setup({
        style = 'warmer'
    })
    require('onedark').load()
end


-- nightfox theme settings
if (lvim.colorscheme == "duskfox")
    or (lvim.colorscheme == "nightfox")
    or (lvim.colorscheme == "nordfox")
    or (lvim.colorscheme == "terafox")
    or (lvim.colorscheme == "carbonfox")
then
    require('nightfox').setup({
        options = {
            -- Compiled file's destination location
            -- compile_path = vim.fn.stdpath("cache") .. "/nightfox",
            -- compile_file_suffix = "_compiled", -- Compiled file suffix
            transparent = true,     -- Disable setting background
            terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
            dim_inactive = false,   -- Non focused panes set to alternative background
            module_default = true,  -- Default enable value for modules
            -- colorblind = {
            --     enable = false, -- Enable colorblind support
            --     simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
            --     severity = {
            --         protan = 0, -- Severity [0,1] for protan (red)
            --         deutan = 0, -- Severity [0,1] for deutan (green)
            --         tritan = 0, -- Severity [0,1] for tritan (blue)
            --     },
            -- },
            styles = { -- Style to be applied to different syntax groups
                -- comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
                -- conditionals = "NONE",
                -- constants = "NONE",
                -- functions = "NONE",
                -- keywords = "NONE",
                -- numbers = "NONE",
                -- operators = "NONE",
                -- strings = "NONE",
                -- types = "NONE",
                -- variables = "NONE",
            },
            -- inverse = { -- Inverse highlight for different types
            --     match_paren = false,
            --     visual = false,
            --     search = false,
            -- },
            -- modules = { -- List of various plugins and additional options
            --     -- ...
            -- },
        },
        palettes = {
            terafox = {
                comment = "#48526a",
            }
        },
        groups = {
            duskfox = {
                CursorLine = { bg = "#14171c" },
            },
            terafox = {
                CursorLine                 = { bg = "#22272c" },
                LineNr                     = { fg = "#22272c" },
                -- IntentBlanklineChar         = { fg = "#ff0000", bg = "#0000ff" },
                -- IndentBlanklineChar         = { fg = "#00ff00", bg = "#0000ff" },
                IndentBlanklineContextChar = { fg = "#d78b6c", },
                -- IndentBlanklineContextStart = { fg = "#ff0000", bg = "#0000ff" },
                -- IndentBlanklineIndent6      = { fg = "#ff0000", bg = "#0000ff" },
                -- IndentBlanklineIndent5      = { fg = "#ff0000", bg = "#0000ff" },
                -- IndentBlanklineIndent4      = { fg = "#ff0000", bg = "#0000ff" },
                -- IndentBlanklineIndent3      = { fg = "#ff0000", bg = "#0000ff" },
                -- IndentBlanklineIndent2      = { fg = "#ff0000", bg = "#0000ff" },
                -- IndentBlanklineIndent1      = { fg = "#ff0000", bg = "#0000ff" },

            }
        }

        -- palettes = {},
        -- specs = {},
        -- groups = {},
    })
    require('nightfox').load()
end
