local options = {
  syntax = "on",
  errorbells = false,
  background = 'dark',
  number = true, -- set numbered lines
  relativenumber = true, -- set relative numbered lines
  -- clipboard = "unnamedplus", -- allows neovim to access the system clipboard
  tabstop = 2, -- insert 4 spaces for a tab
  softtabstop = 2,
  shiftwidth = 2, -- the number of spaces inserted for each indentation
  expandtab = true, -- convert tabs to spaces
  smartcase = true, -- smart case
  smartindent = true, -- make indenting smarter again
  undofile = true, -- enable persistent undo
  backup = false, -- creates a backup file
  swapfile = false, -- creates a swapfile
  cmdheight = 0, -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0, -- so that `` is visible in markdown files
  fileencoding = "utf-8", -- the encoding written to a file
  incsearch = true,
  hlsearch = true, -- highlight all matches on previous search pattern
  ignorecase = true, -- ignore case in search patterns
  -- mouse = "a", -- allow the mouse to be used in neovim
  pumheight = 10, -- pop up menu height
  showmode = false, -- we don't need to see things like -- INSERT -- anymore
  -- showtabline = 2, -- always show tabs
  splitbelow = true, -- force all horizontal splits to go below current window
  splitright = true, -- force all vertical splits to go to the right of current window
  termguicolors = true, -- set term gui colors (most terminals support this)
  -- timeoutlen = 100, -- time to wait for a mapped sequence to complete (in milliseconds)
  updatetime = 100, -- faster completion (4000ms default)
  writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  cursorline = true, -- highlight the current line
  colorcolumn = "90",
  numberwidth = 2, -- set number column width to 2 {default 4}
  signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
  wrap = false, -- display lines as one long line
  scrolloff = 10, -- is one of my fav
  sidescrolloff = 8,
  guicursor = "",
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.o.termguicolors = true

-- when pressing left/right cursor keys,
-- Vim will move to the previous/next line after reaching first/last character in the line
vim.cmd "set whichwrap+=<,>,h,l"
