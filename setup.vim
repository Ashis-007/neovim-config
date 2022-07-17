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
" set termguicolors

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

" Remove trailing white spaces
augroup removeTrailingSpace
    autocmd!
    autocmd BufWritePre *.*
augroup END

" Remove search highlight until next search
nnoremap <silent> <Esc><Esc> :let @/=""<CR>
