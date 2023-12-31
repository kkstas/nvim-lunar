-- autocommand, który sprawia, że pisząc komentarz nie wstawia ci się w nowej linii początek Komentarza
vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
  callback = function()
    vim.cmd "set formatoptions-=cro"
  end,
})

lvim.autocommands = {
  {
    "BufEnter",             -- see `:h autocmd-events`
    {                       -- this table is passed verbatim as `opts` to `nvim_create_autocmd`
      pattern = { "*.md" }, -- see `:h autocmd-events`
      command = "setlocal conceallevel=0 wrap linebreak breakindent",
    }
  },
}

-- USER COMMANDS --
vim.api.nvim_create_user_command('Q', function() vim.cmd("q") end, { nargs = 0 })
vim.api.nvim_create_user_command('W', function() vim.cmd("w") end, { nargs = 0 })
