lvim.plugins = {
    'tpope/vim-surround',
    'tpope/vim-repeat',
    'simrat39/rust-tools.nvim',
    {
        'kevinhwang91/nvim-ufo',
        dependencies = { 'kevinhwang91/promise-async' },
        opts = {
            filetype_exclude = { 'help', 'alpha', 'dashboard', 'neo-tree', 'Trouble', 'lazy', 'mason', 'NvimTree' },
        },
        config = function(_, opts)
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities.textDocument.foldingRange = {
                dynamicRegistration = false,
                lineFoldingOnly = true,
            }

            vim.api.nvim_create_autocmd('FileType', {
                group = vim.api.nvim_create_augroup('local_detach_ufo', { clear = true }),
                pattern = opts.filetype_exclude,
                callback = function()
                    require('ufo').detach()
                end,
            })

            vim.opt.foldlevelstart = 99
            require('ufo').setup(opts)
        end,
    },
    {
        "folke/zen-mode.nvim",
        config = function()
            require("zen-mode").setup {}
        end
    },
    {
        "folke/todo-comments.nvim",
        event = "BufRead",
        config = function()
            require("todo-comments").setup()
        end,
    },
    {
        'windwp/nvim-ts-autotag',
        config = function()
            require('nvim-ts-autotag').setup()
        end,
    },
    {
        'ggandor/flit.nvim',
        enabled = true,
        keys = function()
            local ret = {}
            for _, key in ipairs({ 'f', 'F', 't', 'T' }) do
                ret[#ret + 1] = { key, mode = { 'n', 'x', 'o' }, desc = key }
            end
            return ret
        end,
        opts = { labeled_modes = 'nx' },
    },
    {
        'ggandor/leap.nvim',
        enabled = true,
        keys = {
            { 's',  mode = { 'n', 'x', 'o' }, desc = 'Leap forward to' },
            { 'S',  mode = { 'n', 'x', 'o' }, desc = 'Leap backward to' },
            { 'gs', mode = { 'n', 'x', 'o' }, desc = 'Leap from windows' },
        },
        config = function(_, opts)
            local leap = require('leap')
            for k, v in pairs(opts) do
                leap.opts[k] = v
            end
            leap.add_default_mappings(true)
            vim.keymap.del({ 'x', 'o' }, 'x')
            vim.keymap.del({ 'x', 'o' }, 'X')
        end,
    },
    {
        'mg979/vim-visual-multi',
        lazy = false,
        init = function()
            vim.g.VM_maps = {
                ['Add Cursor Down'] = '<C-Down>',
                ['Add Cursor Up'] = '<C-Up>',
            }
        end,
    },
    "AlexvZyl/nordic.nvim",
    'navarasu/onedark.nvim',
    'EdenEast/nightfox.nvim',
    'tomasiser/vim-code-dark',
    'christianchiarulli/nvcode-color-schemes.vim',
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    'sainnhe/sonokai',
    'shaunsingh/nord.nvim'


}
