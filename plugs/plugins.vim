call plug#begin('~/.vim/plugged')

" Declare the list of plugins.

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" THEMES
Plug 'gruvbox-community/gruvbox'

Plug 'tpope/vim-sensible'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/vim-gitbranch'
Plug 'christoomey/vim-system-copy'

" Plug 'frazrepo/vim-rainbow'
" Plug 'luochen1990/rainbow'
Plug 'junegunn/rainbow_parentheses.vim'

Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'farmergreg/vim-lastplace'
Plug 'romgrk/winteract.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'APZelos/blamer.nvim'
Plug 'mxw/vim-jsx'
Plug 'ap/vim-css-color'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'christoomey/vim-system-copy'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'Xuyuanp/scrollbar.nvim'
Plug 'voldikss/vim-floaterm'

" NERDTree stuff
" Plug 'preservim/NERDTree'
" Plug 'ryanoasis/vim-devicons'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" nvim-tree
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" Comment stuff
Plug 'numToStr/Comment.nvim'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'

" Search stuff
Plug 'justinmk/vim-sneak'

" Status line
Plug 'nvim-lualine/lualine.nvim'
" Plug 'itchyny/lightline.vim'
" Plug 'josa42/vim-lightline-coc'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
