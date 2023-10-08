lvim.transparent_window = true
-- lvim.colorscheme = 'duskfox'
lvim.colorscheme = 'nordic'
-- lvim.colorscheme = 'codedark'
-- lvim.colorscheme = 'nvcode'


if (lvim.colorscheme == 'codedark') then
    vim.g.codedark_transparent = 1
end


if (lvim.colorscheme == 'nordic') then
    local fg_dim_color = "#60728a"
    require("nordic").setup({
        override = {


            Search = { bg = "#30425a", bold = false },
            --- "LeapLabelPrimary", "LeapLabelSecondary", "LeapLabelSelected", "LeapMatch", "LeapBackdrop"
            Visual = { bg = "#263536" },
            -- Visual = { bg = "#263536" },
            Comment = { fg = fg_dim_color },
            NvimTreeRootFolder = { fg = fg_dim_color },
            NvimTreeGitDirty = { fg = fg_dim_color },
            NvimTreeGitNew = { fg = fg_dim_color },
            NvimTreeGitDeleted = { fg = fg_dim_color },
            NvimTreeGitStaged = { fg = fg_dim_color },
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
            -- transparent = false,    -- Disable setting background
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
            -- styles = { -- Style to be applied to different syntax groups
            --     comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
            --     conditionals = "NONE",
            --     constants = "NONE",
            --     functions = "NONE",
            --     keywords = "NONE",
            --     numbers = "NONE",
            --     operators = "NONE",
            --     strings = "NONE",
            --     types = "NONE",
            --     variables = "NONE",
            -- },
            -- inverse = { -- Inverse highlight for different types
            --     match_paren = false,
            --     visual = false,
            --     search = false,
            -- },
            -- modules = { -- List of various plugins and additional options
            --     -- ...
            -- },
        },
        -- palettes = {},
        -- specs = {},
        -- groups = {},
    })
    require('nightfox').load()
end
