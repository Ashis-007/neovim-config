let g:floaterm_width = 0.8
let g:floaterm_height = 0.7

" KEY BINDINGS
nnoremap <silent> <F8> :FloatermNew<CR>
tnoremap <silent> <F8> <C-\><C-n>:FloatermNew<CR>
nnoremap <silent> <F9> :FloatermPrev<CR>
tnoremap <silent> <F9> <C-\><C-n>:FloatermPrev<CR>
nnoremap <silent> <F10> :FloatermNext<CR>
tnoremap <silent> <F10> <C-\><C-n>:FloatermNext<CR>
nnoremap <silent> <F12> :FloatermToggle<CR>
tnoremap <silent> <F12> <C-\><C-n>:FloatermToggle<CR>
noremap <leader>g :FloatermNew --height=0.9 --width=0.95 lazygit<CR>

