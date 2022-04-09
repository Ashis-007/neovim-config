
" FZF :Rg with preview window
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" KEY BINDINGS
noremap  <leader>ff :Files<CR>
noremap  <leader>fs :Rg<CR>
noremap  <leader>fb :Buffers<CR>
