vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
-- vim.opt.tabstop = 2
-- vim.opt.softtabstop = 2
-- vim.opt.shiftwidth = 2
vim.opt.sidescrolloff = 15
vim.opt.scrolloff = 10


lvim.builtin.cmp.preselect = require('cmp').PreselectMode.None

lvim.builtin.indentlines.options.show_first_indent_level = false

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
    "JUMP LIST:",
    "   <C-i> --> go to next position in the 'jump list'",
    "   <C-o> --> go to prev position in the 'jump list'",
    ":ju[mps] --> view the 'jump list'",
    " ",
    "CHANGE LIST:",
    "      g; --> go to prev position in the 'change list'",
    "      g, --> go to next position in the 'change list'",
    ":changes --> view the 'change list'",
    " ",
    "       * --> go to next matching word",
    "       # --> go to prev matching word",
}
