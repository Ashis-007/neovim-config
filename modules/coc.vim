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
