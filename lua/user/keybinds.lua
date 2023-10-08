-- unbind A-j i A-k bo zamieniają linie -------
lvim.keys.insert_mode["<A-j>"] = false       --
lvim.keys.insert_mode["<A-k>"] = false       --
lvim.keys.normal_mode["<A-j>"] = false       --
lvim.keys.normal_mode["<A-k>"] = false       --
lvim.keys.visual_block_mode["<A-j>"] = false --
lvim.keys.visual_block_mode["<A-k>"] = false --
lvim.keys.visual_block_mode["J"] = false     --
lvim.keys.visual_block_mode["K"] = false     --
-----------------------------------------------



-- dla foldów z nvim-ufo
vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
vim.keymap.set('n', 'zr', require('ufo').openFoldsExceptKinds)
vim.keymap.set('n', 'zm', require('ufo').closeFoldsWith) -- closeAllFolds == closeFoldsWith(0)

lvim.builtin.which_key.mappings["v"] = { ":lua require('ufo').peekFoldedLinesUnderCursor()<CR>", "Peek fold" }



local cmp = require("cmp")
lvim.builtin.cmp.mapping["<C-i>"] = cmp.mapping.complete()
lvim.builtin.cmp.mapping["<C-;>"] = cmp.mapping.complete()

lvim.keys.normal_mode["<C-8>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<C-7>"] = ":BufferLineCyclePrev<CR>"

lvim.builtin.terminal.insert_mode = false

lvim.builtin.terminal.direction = "horizontal"
lvim.builtin.which_key.mappings["t"] = {
    name = "Terminal",
    q = { ':exe 1 . "ToggleTerm"<CR>', "term1" },
    w = { ':exe 2 . "ToggleTerm"<CR>', "term2" },
    e = { ':exe 3 . "ToggleTerm"<CR>', "term3" },
    r = { ':1TermExec cmd="cargo run"<CR>', "cargo run on term1" },
    t = { ':1TermExec cmd="npm run dev"<CR>', "npm run dev on term1" },
    c = { ":1TermExec cmd=<C-c>", "cancel term1" },
}

lvim.builtin.which_key.mappings["z"] = {
    name = "zen",
    m = { ":ZenMode<CR>", "Zen Mode" },
}

lvim.builtin.which_key.mappings["l"].t = { ":LspRestart<CR>", "restart LSP" }

-- w Wezterm (i VSCodium) masz Shift + Ctrl + Up/Down/Left/Right arrow
-- na resize. Dlatego - żeby nie kolidował NVIM z Wezterm,
-- tutaj resize jest za pomocą Shift + Arrows
lvim.keys.normal_mode["<S-Up>"] = ":resize -2<CR>"
lvim.keys.normal_mode["<S-Down>"] = ":resize +2<CR>"
lvim.keys.normal_mode["<S-Left>"] = ":vertical resize -2<CR>"
lvim.keys.normal_mode["<S-Right>"] = ":vertical resize +2<CR>"

lvim.builtin.which_key.mappings["D"] = lvim.builtin.which_key.mappings["d"]
lvim.builtin.which_key.mappings["d"] = { "<cmd>BufferKill<CR>", "Close Buffer" }

lvim.builtin.which_key.mappings["k"] = { ":join!<CR>", "łącz linię bez spacji" }
lvim.builtin.which_key.mappings["j"] = { ":join<CR>", "łącz linię ze spacją" }

lvim.builtin.which_key.mappings["w"] = {
    name = "Window",
    v = { ":vsplit<CR>", "vertical split" },
    s = { ":split<CR>", "horizontal split" },
}

lvim.keys.normal_mode["<C-u>"] = "4kzz"
lvim.keys.normal_mode["<C-d>"] = "4jzz"

lvim.keys.visual_block_mode["J"] = ":m '>+1<CR>gv=gv"
lvim.keys.visual_block_mode["K"] = ":m '<-2<CR>gv=gv"

lvim.keys.insert_mode["<C-i>"] = lvim.keys.insert_mode["<C-Space>"]
