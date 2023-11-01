vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
-- vim.opt.tabstop = 2
-- vim.opt.softtabstop = 2
-- vim.opt.shiftwidth = 2
vim.opt.sidescrolloff = 15
vim.opt.scrolloff = 10

vim.opt.completeopt = "menuone,noselect"
lvim.builtin.autopairs.disable_in_visualblock = true


lvim.builtin.alpha.dashboard.section.header.val = {
    "    __                          _    ___         ",
    "   / /   __  ______  ____ _____| |  / (_)___ ___ ",
    "  / /   / / / / __ \\/ __ `/ ___/ | / / / __ `__ \\",
    " / /___/ /_/ / / / / /_/ / /   | |/ / / / / / / /",
    "/_____/\\__,_/_/ /_/\\__,_/_/    |___/_/_/ /_/ /_/ ",
    "",
    "    yss{ --> otocz zawartość linii curly bracketem",
    "yss<div> --> otocz zawartość linii <divem>",
    '    cst" --> zamień taga na znak  `"`      ',
    "  S<div> --> otocz zawartość <divem> (w line visual mode V)",
    " ",
    "      zt --> shift current line to top of screen",
    "      zb --> shift current line to bottom of screen"
}


-- for nvim-ufo folds

vim.o.foldcolumn = '1'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
