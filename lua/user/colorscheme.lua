lvim.transparent_window = true

-- lvim.colorscheme = 'duskfox'
lvim.colorscheme = 'terafox'
-- lvim.colorscheme = 'nordic'
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
    require("user.schemes.nordic")
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
    require("user.schemes.nightfox")
end

-- -- Gdybyś chciał zmienić wygląd lualine (np. transparent background):
-- local colors = {
--     darkgray = "#16161d",
--     gray = "#727169",
--     innerbg = nil,
--     outerbg = "#16161D",
--     normal = "#7e9cd8",
--     insert = "#98bb6c",
--     visual = "#ffa066",
--     replace = "#e46876",
--     command = "#e6c384",
-- }
-- lvim.builtin.lualine.options.theme = {
--     inactive = {
--         a = { fg = colors.gray, bg = colors.outerbg, gui = "bold" },
--         b = { fg = colors.gray, bg = colors.outerbg },
--         c = { fg = colors.gray, bg = colors.innerbg },
--     },
--     visual = {
--         a = { fg = colors.darkgray, bg = colors.visual, gui = "bold" },
--         b = { fg = colors.gray, bg = colors.outerbg },
--         c = { fg = colors.gray, bg = colors.innerbg },
--     },
--     replace = {
--         a = { fg = colors.darkgray, bg = colors.replace, gui = "bold" },
--         b = { fg = colors.gray, bg = colors.outerbg },
--         c = { fg = colors.gray, bg = colors.innerbg },
--     },
--     normal = {
--         a = { fg = colors.darkgray, bg = colors.normal, gui = "bold" },
--         b = { fg = colors.gray, bg = colors.outerbg },
--         c = { fg = colors.gray, bg = colors.innerbg },
--     },
--     insert = {
--         a = { fg = colors.darkgray, bg = colors.insert, gui = "bold" },
--         b = { fg = colors.gray, bg = colors.outerbg },
--         c = { fg = colors.gray, bg = colors.innerbg },
--     },
--     command = {
--         a = { fg = colors.darkgray, bg = colors.command, gui = "bold" },
--         b = { fg = colors.gray, bg = colors.outerbg },
--         c = { fg = colors.gray, bg = colors.innerbg },
--     },
-- }
