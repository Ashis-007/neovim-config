" remap leader key
let mapleader = " "

nnoremap <C-q> :q<CR>
nnoremap <C-s> :w<CR>

" Disable arrow keys
" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>

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

" Remove search highlight until next search
nnoremap <silent> <Esc><Esc> :let @/=""<CR>


" PLUGINS

" Bufferline
nnoremap <silent> <C-l> :BufferLineCycleNext<CR>
nnoremap <silent> <C-h> :BufferLineCyclePrev<CR>

" CoC
nmap <silent> gd :call CocAction('jumpDefinition', 'vsplit')<CR>
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Remap for rename current word
nmap <silent> <F2> <Plug>(coc-rename)
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

" FloatTerm
nnoremap <silent> <F8> :FloatermNew<CR>
tnoremap <silent> <F8> <C-\><C-n>:FloatermNew<CR>
nnoremap <silent> <F9> :FloatermPrev<CR>
tnoremap <silent> <F9> <C-\><C-n>:FloatermPrev<CR>
nnoremap <silent> <F10> :FloatermNext<CR>
tnoremap <silent> <F10> <C-\><C-n>:FloatermNext<CR>
nnoremap <silent> <F12> :FloatermToggle<CR>
tnoremap <silent> <F12> <C-\><C-n>:FloatermToggle<CR>
noremap <leader>g :FloatermNew --height=0.9 --width=0.95 lazygit<CR>

" fzf
noremap  <leader>ff :Files<CR>
noremap  <leader>fs :Rg<CR>
noremap  <leader>fb :Buffers<CR>

" nvim-tree
nnoremap <leader>nt :NvimTreeToggle<CR>
nnoremap <leader>nr :NvimTreeRefresh<CR>
nnoremap <leader>nf :NvimTreeFindFile<CR>
nnoremap <leader>nn :NvimTreeFocus<CR>
" More available functions:
" NvimTreeOpen
" NvimTreeClose
" NvimTreeFocus
" NvimTreeFindFileToggle
" NvimTreeResize
" NvimTreeCollapse
" NvimTreeCollapseKeepBuffers
