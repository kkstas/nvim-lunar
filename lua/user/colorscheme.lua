lvim.transparent_window = true


-- local scheme = 'kanagawa' -- lvim.colorscheme jest wywoływane na końcu tego pliku, ponieważ
---------------------------- niektóre colorschemes wymagają najpierw ustawienia configu

-- local scheme = 'duskfox'
-- local scheme = 'terafox'
local scheme = 'nordic'
-- local scheme = 'codedark'
-- local scheme = 'nvcode'
-- local scheme = 'tokyonight-storm'
-- local scheme = 'tokyonight-night'
-- local scheme = 'sonokai'
-- local scheme = 'github_dark'
-- local scheme = 'github_dark_colorblind'
-- local scheme = 'gruvbox-baby'

-- if (scheme == 'gruvbox-baby') then
-- require('user.schemes.gruvbox-baby')
-- end


if (scheme == 'kanagawa') then
    require('user.schemes.kanagawa')
    -- scheme = 'kanagawa'
end


if (scheme == 'sonokai') then
    -- vim.g.sonokai_style = 'andromeda'
    vim.g.sonokai_style = 'atlantis'
end

if (scheme == 'codedark') then
    vim.g.codedark_transparent = 1
end


if (scheme == 'nordic') then
    require('user.schemes.nordic')
end

if (scheme == 'onedark') then
    require('onedark').setup({
        style = 'warmer'
    })
    require('onedark').load()
end


-- nightfox theme settings
if (scheme == "duskfox")
    or (scheme == "nightfox")
    or (scheme == "nordfox")
    or (scheme == "terafox")
    or (scheme == "carbonfox")
then
    require("user.schemes.nightfox")
end

lvim.colorscheme = scheme

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
