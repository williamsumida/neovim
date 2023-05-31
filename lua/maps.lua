local keymap = vim.keymap
vim.g.mapleader = " "


keymap.set('n', 'x', '"_x')
keymap.set('i', 'jj', '<C-[>')
vim.keymap.set("n", "<Leader>k", "<C-w>k")
vim.keymap.set("n", "<Leader>h", "<C-w>h")
vim.keymap.set("n", "<Leader>j", "<C-w>j")
vim.keymap.set("n", "<Leader>l", "<C-w>l")
vim.keymap.set("n", "<Leader>sv", ":source $MYVIMRC<CR>")
