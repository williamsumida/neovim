require('telescope').setup {
  defaults = {
    file_ignore_patterns = { 
      "node_modules", 
      "%.pyc", 
      "%.git",
      ".angular" 
    },
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
}
pcall(require('telescope').load_extension, 'fzf')

local builtin  = require('telescope.builtin')
vim.keymap.set('n', '<leader>p', '<cmd>Telescope find_files hidden=true<CR>')
vim.keymap.set('n', 'gr', '<cmd> Telescope lsp_references <CR>')
vim.keymap.set('n', '<leader>ds', '<cmd> Telescope lsp_document_symbols<CR>')
vim.keymap.set('n', '<leader>ws', '<cmd> Telescope lsp_dynamic_workspace_symbols<CR>')
vim.keymap.set('n', '<leader>g', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ")})
end);
--vim.keymap.set('n', '<leader>/', '<cmd> Telescope current_buffer_fuzzy_find<CR>')

--require('telescope').setup{  defaults = { file_ignore_patterns = { "node_modules", "%.pyc", "%.git" }} }

vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer]' })
