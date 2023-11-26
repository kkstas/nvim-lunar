vim.cmd("setlocal tabstop=2 softtabstop=2 shiftwidth=2")

vim.keymap.set('n', '<leader>tt', ':1TermExec cmd="node index.js"<CR>')
vim.keymap.set('n', '<leader>tt', ':1TermExec cmd="npm run dev"<CR>')
