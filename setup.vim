"set nocompatible
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set nu
set hidden
set noerrorbells
set noswapfile
set nobackup
"set undodir=~/.vim/undodir
set undofile
set incsearch
set hlsearch
set smartcase
set ignorecase
set scrolloff=10
set bg=dark
set background=dark
set backspace=indent,eol,start
set shortmess=F
set cmdheight=1
set foldmethod=indent   
set nofoldenable
set noshowmode
set termguicolors

" for html/js/python files, 2 spaces
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype python setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufRead,BufNewFile *.jsx,*.tsx setlocal tabstop=2 shiftwidth=2 softtabstop=2

syntax on

if !has('gui_running')
  set t_Co=256
endif

let g:rainbow_active = 1
let mapleader = " "

map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
inoremap jk <C-C>
noremap  <C-l> :tabn<CR>
noremap  <C-h> :tabp<CR>
noremap  <C-n> :tabnew<CR>

" To open vimrc in a new vertical split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" To source vimrc quickly
nnoremap <leader>sv :source $MYVIMRC<cr>
" To run Prettier
nnoremap <leader>pp :Prettier<cr>

" Window split shortcuts
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>- :split<CR>

" Winteract Settings
nmap <leader>rw :InteractiveWindow<CR>

" Moving lines around in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Remove trailing white spaces
augroup removeTrailingSpace
    autocmd!
    autocmd BufWritePre *.*
augroup END

" Remove search highlight until next search
nnoremap <silent> <Esc><Esc> :let @/=""<CR>
