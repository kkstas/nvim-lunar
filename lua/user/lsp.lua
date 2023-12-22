lvim.builtin.treesitter.ensure_installed = {
    "toml", "lua",
}

lvim.format_on_save.enabled = false

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    { command = "prettier", filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact", "css", "vue", "scss", "less", "html" } },
}

-- local linters = require("lvim.lsp.null-ls.linters")
-- linters.setup({
--     {
--         command = "eslint",
--         filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact", "css", "vue", "scss", "less", "html" }
--     },
-- })
