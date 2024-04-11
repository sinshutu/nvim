inoremap <S-Tab> <C-d>

nmap <silent> <C-k> :cp<CR>
nmap <silent> <C-j> :cn<CR>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" for lsp-vim
nmap <silent> <C-p> <Plug>(lsp-preview-diagnostic)
nmap <silent> <C-n> <Plug>(lsp-next-diagnostic)

" Git
nmap <silent> <C-g>b :Git blame<CR>
