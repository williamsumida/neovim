--setup must be called before loading the colorscheme
--Default options:
-- require("gruvbox").setup({
--   undercurl = true,
--   underline = true,
--   bold = true,
--   italic = true,
--   strikethrough = false,
--   invert_selection = false,
--   invert_signs = false,
--   invert_tabline = false,
--   invert_intend_guides = false,
--   inverse = true, -- invert background for search, diffs, statuslines and errors
--   contrast = "soft", -- can be "hard", "soft" or empty string
--   overrides = {},
-- })


-- vim.cmd("colorscheme gruvbox-material")
vim.cmd("colorscheme tokyonight-moon")

require'lualine'.setup {
  options = {
    theme = 'tokyonight',
    --theme = 'gruvbox-material',
    transparent = true,
    styles = {
       sidebars = "transparent",
       floats = "transparent",
    }
    --theme = 'gruvbox'
  }
}
-- vim.g.gruvbox_material_enalble_bold = 1
-- vim.g.gruvbox_material_enable_italic = 1
-- vim.g.gruvbox_material_cursor = 'purple'
-- vim.g.gruvbox_material_background = 'soft'
