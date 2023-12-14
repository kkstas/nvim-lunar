local rt = require("rust-tools")


rt.setup({

    tools = { -- rust-tools options
        inlay_hints = {
            -- The color of the hints
            -- highlight = "Comment", -- default
            -- highlight = "WinSeparator",
            highlight = "LineNr",
        },
    },
    server = {
        on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set("n", "K", rt.hover_actions.hover_actions, { buffer = bufnr })

            -- szczegóły diagnostic on hover
            vim.keymap.set("n", "J",
                function()
                    local float = vim.diagnostic.config().float

                    if float then
                        local config = type(float) == "table" and float or {}
                        config.scope = "line"

                        vim.diagnostic.open_float(config)
                    end
                end,
                { buffer = bufnr })

            -- -- Code action groups
            vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
        end,
    },
})
