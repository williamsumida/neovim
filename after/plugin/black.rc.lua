--vim.g.python3_host_prog = '~/.local/venv/nvim/bin/python3'
vim.g.python3_host_prog = '/opt/homebrew/bin/python3'

vim.api.nvim_command [[augroup black_on_save]]
vim.api.nvim_command [[autocmd!]]
vim.api.nvim_command [[autocmd BufWritePre *.py Black]]
vim.api.nvim_command [[augroup END]]
