call plug#begin('~/.vim/plugged')

" Declare the list of plugins.

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-sensible'
Plug 'gruvbox-community/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'josa42/vim-lightline-coc'
Plug 'itchyny/vim-gitbranch'
Plug 'christoomey/vim-system-copy'
"Plug 'frazrepo/vim-rainbow'
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
Plug 'preservim/NERDTree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Comment stuff
Plug 'numToStr/Comment.nvim'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'

" Search stuff
Plug 'justinmk/vim-sneak'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
