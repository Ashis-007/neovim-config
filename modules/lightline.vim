" Lightline config
let g:lightline = {
                        \ 'colorscheme': 'dracula',
                        \ 'active': {
                        \   'left': [ [ 'mode', 'paste' ],
                        \             [ 'gitbranch', 'cocstatus', 'readonly', 'relativepath', 'modified' ]]
                        \ },
                        \ 'component_function': {
                        \   'gitbranch': 'gitbranch#name',
                        \   'cocstatus': 'coc#status',
                        \   'filetype': 'MyFiletype',
                        \   'fileformat': 'MyFileformat',
                        \ },
                        \ }

autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction
