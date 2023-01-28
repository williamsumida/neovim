local status_ok, npairs = pcall(require, "nvim-autopairs")
if not status_ok then
  return
end

npairs.setup {
  check_ts = true,
  enable_check_bracket_line = false,
  disable_filetype = { "TelescopePrompt" },

  --fast_wrap = {
  --  map = '<Space>e',
  --  chars = { '{', '[', '(', '"', "'" },
  --  pattern = [=[[%'%"%)%>%]%)%}%,]]=],
  --  end_key = '$',
  --  keys = 'qwertyuiopzxcvbnmasdfghjkl',
  --  check_comma = true,
  --  highlight = 'Search',
  --  highlight_grey='Comment'
  --},
}

local cmp_autopairs = require "nvim-autopairs.completion.cmp"
