local opts = { noremap = true, silent = true }

-- Shorten function name
keymap = vim.keymap.set

-- Remap space as leader key
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<M-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<M-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Page up and down
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- Insert --
-- Press jk fast to exit insert mode
keymap("i", "jk", "<ESC>", opts)

-- save buffer
keymap("i", "<C-s>", ":w<CR>", opts)
keymap("n", "<C-s>", ":w<CR>", opts)

-- delete buffer
keymap("i", "<C-w>", ":bp|sp|bn|bd<CR>", opts)
keymap("n", "<C-w>", ":bp|sp|bn|bd<CR>", opts)
keymap("n", "<leader>bd", ":bp|sp|bn|bd<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<M-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<M-k>", ":move '<-2<CR>gv-gv", opts)

-- Remove search highlight until next search
keymap("n", "<Esc><Esc>", ':let @/=""<CR>')

-- nvim-tree
keymap("n", "<leader>nt", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>nr", ":NvimTreeRefresh<CR>", opts)
keymap("n", "<leader>nf", ":NvimTreeFindFile<CR>", opts)
keymap("n", "<leader>nn", ":NvimTreeFocus<CR>", opts)

-- fzf
keymap("n", "<leader>ff", ":Files <cr>")
keymap("n", "<leader>fs", ":Rg <cr>")
keymap("n", "<leader>fb", ":Buffers <cr>")

-- FloatTerm
keymap("n", "<F8>", ":FloatermNew<CR>")
keymap("n", "<F9>", ":FloatermPrev<CR>")
keymap("n", "<F10>", ":FloatermNext<CR>")
keymap("n", "<F12>", ":FloatermToggle<CR>")
keymap("n", "<leader>g", ":FloatermNew --height=0.9 --width=0.95 lazygit<CR>")
vim.cmd [[
    tnoremap <silent> <F8> <C-\><C-n>:FloatermNew<CR>
    tnoremap <silent> <F9> <C-\><C-n>:FloatermPrev<CR>
    tnoremap <silent> <F10> <C-\><C-n>:FloatermNext<CR>
    tnoremap <silent> <F12> <C-\><C-n>:FloatermToggle<CR>
]]

-- vim-illuminate
keymap('n', '<A-n>', '<cmd>lua require"illuminate".next_reference{wrap=true}<cr>')
keymap('n', '<A-p>', '<cmd>lua require"illuminate".next_reference{reverse=true,wrap=true}<cr>')
