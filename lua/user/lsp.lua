lvim.builtin.treesitter.ensure_installed = {
    "toml", "lua",
}

lvim.format_on_save.enabled = true



local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        name = "prettier",
        args = {
            "--print-width=100",
            "--tab-width=2",
            "--semi=true",
            "--trailing-comma=es5",
            "--single-quote=true"
        },
        filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "vue", "css", "scss", "less",
            "html",
            "json", "jsonc", "yaml", "markdown", "markdown.mdx", "graphql", "handlebars" },
    }
}
