-- setup must be called before loading the colorscheme
-- Default options:
require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = false,
  strikethrough = false,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  overrides = {},
  dim_inactive = false,
  -- transparent_mode = true,
})

vim.cmd("colorscheme gruvbox")

-- for transparent background
-- vim.cmd "hi Normal guibg=NONE ctermbg=NONE"
-- vim.cmd "hi EndOfBuffer guibg=NONE ctermbg=NONE"
-- vim.cmd "hi StatusLine guibg=NONE ctermbg=NONE"
