-- autocommand, który sprawia, że pisząc komentarz nie wstawia ci się w nowej linii początek Komentarza
vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
    callback = function()
        vim.cmd "set formatoptions-=cro"
    end,
})
