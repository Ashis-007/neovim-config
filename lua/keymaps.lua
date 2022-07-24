local opts = { noremap = true }

local term_opts = { silent = true }

-- Shorten function name
keymap = vim.keymap.set

-- Remap space as leader key
keymap("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

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
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to exit insert mode
keymap("i", "jk", "<ESC>", opts)

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
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- key_map("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- key_map("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- key_map("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- key_map("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- nvim-tree
keymap("n", "<leader>nt", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>nr", ":NvimTreeRefresh<CR>", opts)
keymap("n", "<leader>nf", ":NvimTreeFindFile<CR>", opts)
keymap("n", "<leader>nn", ":NvimTreeFocus<CR>", opts)

-- fzf
keymap("n", "<leader>ff", "<cmd> Files <cr>")
keymap("n", "<leader>fs", "<cmd> Rg <cr>")
keymap("n", "<leader>fb", "<cmd> Buffers <cr>")

vim.cmd([[
    noremap  <leader>f :Files<CR>
    noremap  <leader>fs :Rg<CR>
    noremap  <leader>fb :Buffers<CR>

    nnoremap <leader>nt :NvimTreeToggle<CR>
    nnoremap <leader>nr :NvimTreeRefresh<CR>
    nnoremap <leader>nf :NvimTreeFindFile<CR>
    nnoremap <leader>nn :NvimTreeFocus<CR>
]])
