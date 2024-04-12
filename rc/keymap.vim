inoremap <S-Tab> <C-d>

nmap <silent> <C-k> :cp<CR>
nmap <silent> <C-j> :cn<CR>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" for coc-vim
nmap <silent> <C-p> <Plug>(coc-diagnostic-prev)
nmap <silent> <C-n> <Plug>(coc-diagnostic-next)

" Git
nmap <silent> <C-g>b :Git blame<CR>
