set hidden

" \ 'ruby': ['solargraph', 'stdio'],
let g:LanguageClient_serverCommands = {
    \ 'vue': ['vls'],
    \ 'javasctript': ['javascript-typescript-langserver'],
    \ }

function LC_maps()
  if has_key(g:LanguageClient_serverCommands, &filetype)
  endif
endfunction
autocmd FileType * call LC_maps()

augroup LanguageClient_config
    autocmd!
    autocmd User LanguageClientStarted setlocal signcolumn=yes
    autocmd User LanguageClientStopped setlocal signcolumn=auto
augroup END

let g:LanguageClient_autoStart = 1
nnoremap <silent> Lh :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> Ld :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> Lr :call LanguageClient#textDocument_rename()<CR>
nnoremap <silent> Lf :call LanguageClient_textDocument_formatting()<CR>
