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
set smartcase
set ignorecase
set scrolloff=10
set bg=dark
set background=dark
set backspace=indent,eol,start
set shortmess=F
set cmdheight=2
set foldmethod=indent   
set nofoldenable

" for html/js/python files, 2 spaces
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype python setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufRead,BufNewFile *.jsx,*.tsx setlocal tabstop=2 shiftwidth=2 softtabstop=2

syntax on
" Coc-Config ---------------------------------- {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COC CONFIG
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by oter plugin.
inoremap <silent><expr> <TAB>
                        \ pumvisible() ? "\<C-n>" :
                        \ <SID>check_back_space() ? "\<TAB>" :
                        \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" coc-prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" FZF :Rg with preview window
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gnr <Plug>(coc-rename)
" nmap <silent> gdn tabedit % | call CocActionAsync('jumpDefinition')<cr>
" nmap <space>cla <Plug>(coc-codeaction-selected)
nmap <space>cla <Plug>(coc-codeaction)
" nmap <space>so :CocList symbols<cr>
nmap <space>so :Vista<cr>
nmap <space>cld :CocList diagnostics<cr>
nmap <space>clc :CocList commands<cr>
" nmap <space>le :CocCommand explorer<cr>
nmap <space>cfc <Plug>(coc-fix-current)
nmap <space>cfm <Plug>(coc-format)
nmap <space>crf <Plug>(coc-refactor)
nmap <space>cdi <Plug>(coc-diagnostic-info)
nmap <space>cdn <Plug>(coc-diagnostic-next)
nmap <space>cdp <Plug>(coc-diagnostic-prev)
nmap <space>cfh <Plug>(coc-float-hide)
nmap <space>cen <Plug>(coc-diagnostic-next-error)
nmap <space>cep <Plug>(coc-diagnostic-prev-error)

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
"
"
let g:coc_global_extensions=[
    \'coc-clangd',
      \'coc-css',
      \'coc-eslint',
      \'coc-go',
      \'coc-highlight',
      \'coc-html',
      \'coc-json',
      \'coc-lists',
      \'coc-marketplace',
      \'coc-pairs',
      \'coc-prettier',
      \'coc-protobuf',
      \'coc-python',
      \'coc-rust-analyzer',
      \'coc-snippets',
      \'coc-syntax',
      \'coc-tsserver',
      \'coc-ultisnips',
      \'coc-yank',
      \ 'coc-emmet',
   \]
"" Remap <C-f> and <C-b> for scroll float windows/popups.
nnoremap <expr><C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <expr><C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"inoremap <expr><C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<Right>"
"inoremap <expr><C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<Left>"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" END OF COC CONFIG
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}

call plug#begin('~/.vim/plugged')

" Declare the list of plugins.

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-sensible'
Plug 'preservim/NERDTree'
Plug 'gruvbox-community/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'josa42/vim-lightline-coc'
Plug 'itchyny/vim-gitbranch'
Plug 'christoomey/vim-system-copy'
Plug 'frazrepo/vim-rainbow'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'farmergreg/vim-lastplace'
Plug 'romgrk/winteract.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'APZelos/blamer.nvim'
Plug 'scrooloose/nerdcommenter'
Plug 'mxw/vim-jsx'
Plug 'ap/vim-css-color'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'christoomey/vim-system-copy'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'Xuyuanp/scrollbar.nvim'
Plug 'voldikss/vim-floaterm'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

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

" FZF
noremap  <leader>ff :Files<CR>
noremap  <leader>fs :Rg<CR>
noremap  <leader>fb :Buffers<CR>

" Floaterm
nnoremap <silent> <F8> :FloatermNew<CR>
tnoremap <silent> <F8> <C-\><C-n>:FloatermNew<CR>
nnoremap <silent> <F9> :FloatermPrev<CR>
tnoremap <silent> <F9> <C-\><C-n>:FloatermPrev<CR>
nnoremap <silent> <F10> :FloatermNext<CR>
tnoremap <silent> <F10> <C-\><C-n>:FloatermNext<CR>
nnoremap <silent> <F12> :FloatermToggle<CR>
tnoremap <silent> <F12> <C-\><C-n>:FloatermToggle<CR>
noremap <leader>g :FloatermNew --height=0.9 --width=0.8 lazygit<CR>

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

nnoremap <leader>nt :NERDTreeToggle<CR>

" Moving lines around in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" GruvBox Config
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_improved_warnings = '1'
let g:gruvbox_guisp_fallback = 'bg'
colorscheme gruvbox

" Remove trailing white spaces
augroup removeTrailingSpace
    autocmd!
    autocmd BufWritePre *.*
augroup END

" Lightline config
let g:lightline = {
                        \ 'colorscheme': 'seoul256',
                        \ 'active': {
                        \   'left': [ [ 'mode', 'paste' ],
                        \             [ 'gitbranch', 'cocstatus', 'readonly', 'filename', 'modified' ]]
                        \ },
                        \ 'component_function': {
                        \   'gitbranch': 'gitbranch#name',
                        \   'cocstatus': 'coc#status'
                        \ },
                        \ }

autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

" Git blmaer
let g:blamer_enabled = 1

" Nvim scrollbar

command! -bang -nargs=* Rg
  \ call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)"h
