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

-- TERMINAL -----------------------------------
lvim.builtin.terminal.direction = "horizontal" -- żeby otwierał się w splicie w dolnej części, a nie np we float

function _G.set_terminal_keymaps()
    local opts = { buffer = 0 }
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-----------------------------------------------


lvim.lsp.buffer_mappings.normal_mode["J"] = {
    function()
        local float = vim.diagnostic.config().float

        if float then
            local config = type(float) == "table" and float or {}
            config.scope = "line"

            vim.diagnostic.open_float(config)
        end
    end,
    "Show line diagnostics",
}


-- dla foldów z nvim-ufo
vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
vim.keymap.set('n', 'zr', require('ufo').openFoldsExceptKinds)
vim.keymap.set('n', 'zm', require('ufo').closeFoldsWith) -- closeAllFolds == closeFoldsWith(0)

lvim.builtin.which_key.mappings["v"] = { ":lua require('ufo').peekFoldedLinesUnderCursor()<CR>", "Peek fold" }
--


-- ESC robi również :nohl
lvim.keys.normal_mode["<ESC>"] = ":nohlsearch<Bar>:echo<CR>"
--

-- numToStr/Navigator.nvim <-> WezTerm - przechodzenie między panes/splits przy <C-hjkl>
lvim.keys.normal_mode["<C-h>"] = "<CMD>NavigatorLeft<CR>"
lvim.keys.term_mode["<C-h>"] = "<CMD>NavigatorLeft<CR>"
lvim.keys.normal_mode["<C-j>"] = "<CMD>NavigatorDown<CR>"
lvim.keys.term_mode["<C-j>"] = "<CMD>NavigatorDown<CR>"
lvim.keys.normal_mode["<C-k>"] = "<CMD>NavigatorUp<CR>"
lvim.keys.term_mode["<C-k>"] = "<CMD>NavigatorUp<CR>"
lvim.keys.normal_mode["<C-l>"] = "<CMD>NavigatorRight<CR>"
lvim.keys.term_mode["<C-l>"] = "<CMD>NavigatorRight<CR>"
lvim.keys.normal_mode["<C-p>"] = "<CMD>NavigatorPrevious<CR>"
lvim.keys.term_mode["<C-p>"] = "<CMD>NavigatorPrevious<CR>"
--

local cmp = require("cmp")
lvim.builtin.cmp.mapping["<C-i>"] = cmp.mapping.complete()
lvim.builtin.cmp.mapping["<C-;>"] = cmp.mapping.complete()

lvim.keys.normal_mode["<C-8>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<C-7>"] = ":BufferLineCyclePrev<CR>"


lvim.builtin.which_key.mappings["f"] = { ":Telescope live_grep<CR>", "Telescope live_grep" }

lvim.builtin.which_key.mappings["t"] = {
    name = "Terminal",
    q = { ':exe 1 . "ToggleTerm"<CR>', "term1" },
    w = { ':exe 2 . "ToggleTerm"<CR>', "term2" },
    e = { ':exe 3 . "ToggleTerm"<CR>', "term3" },
    r = { ':1TermExec cmd="cargo run"<CR>', "cargo run on term1" },
    t = { ':1TermExec cmd="npm run dev"<CR>', "npm run dev on term1" },
    c = { ":1TermExec cmd=<C-c>", "cancel term1" },
}

lvim.keys.normal_mode["<C-t>"] = ': exe 1 . "ToggleTerm"<CR>'
lvim.keys.term_mode["<C-t>"] = ': exe 1 . "ToggleTerm"<CR>'


lvim.builtin.which_key.mappings["z"] = {
    name = "zen",
    m = { ":ZenMode<CR>", "Zen Mode" },
}

lvim.builtin.which_key.mappings["l"].t = { ":LspRestart<CR>", "restart LSP" }

------------------------------------------------------------
-- Tu ustawiam keybindy LSP bo nie działają w przypadku Rust
-- -- Go to definition
lvim.keys.normal_mode["gd"] = vim.lsp.buf.definition
-- -- Go to implementation
lvim.keys.normal_mode["gD"] = vim.lsp.buf.implementation
-- -- Go to references
lvim.keys.normal_mode["gr"] = vim.lsp.buf.references
------------------------------------------------------------

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

lvim.keys.normal_mode["<C-u>"] = "4k"
lvim.keys.normal_mode["<C-d>"] = "4j"

lvim.keys.visual_block_mode["J"] = ":m '>+1<CR>gv=gv"
lvim.keys.visual_block_mode["K"] = ":m '<-2<CR>gv=gv"
