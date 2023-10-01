
lvim.builtin.treesitter.ensure_installed = {
    "rust", "toml", "lua",
}

lvim.format_on_save.enabled = true

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        name = "prettier",
        args = {
            "--print-width=100",
            "--tab-width=4",
            "--semi=true",
            "--trailing-comma=es5",
            "--single-quote=false"
        },
        filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "vue", "css", "scss", "less",
            "html",
            "json", "jsonc", "yaml", "markdown", "markdown.mdx", "graphql", "handlebars" },
    }
}
-- ESLint
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
    {
        exe = "eslint",
        filetypes = {
            "javascriptreact",
            "javascript",
            "typescriptreact",
            "typescript",
            "vue",
        },
    },
}
