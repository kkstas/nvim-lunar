local function my_on_attach(bufnr)
    local api = require("nvim-tree.api")
    local function edit_or_open()
        local node = api.tree.get_node_under_cursor()
        if node.nodes ~= nil then
            api.node.open.edit() -- expand or collapse folder
        else
            api.node.open.edit() -- open file
            api.tree.close()     -- Close the tree if file was opened
        end
    end
    local function vsplit_preview() -- open as vsplit on current node
        local node = api.tree.get_node_under_cursor()
        if node.nodes ~= nil then
            api.node.open.edit()     -- expand or collapse folder
        else
            api.node.open.vertical() -- open file as vsplit
        end
        api.tree.focus()             -- Finally refocus on tree if it was lost
    end

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set("n", "<BS>", api.tree.change_root_to_parent, opts("Root to parent"))
    vim.keymap.set("n", ".", api.tree.change_root_to_node, opts("Change root to node"))
    vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("parent close"))
    vim.keymap.set("n", "H", api.tree.collapse_all, opts("Collapse all"))
    vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
    vim.keymap.set("n", "l", edit_or_open, opts("Edit Or Open"))
    vim.keymap.set("n", "L", vsplit_preview, opts("Vsplit Preview"))
end



lvim.builtin.nvimtree.setup.on_attach = my_on_attach
lvim.builtin.nvimtree.setup.view.float.enable = true
lvim.builtin.nvimtree.setup.view.float.open_win_config.width = 80
lvim.builtin.nvimtree.setup.view.float.open_win_config.height = 45
lvim.builtin.nvimtree.setup.view.float.open_win_config.border = 'rounded'
