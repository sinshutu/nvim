let g:neosnippet#snippets_directory = '~/.config/nvim/repos/github.com/Shougo/neosnippet-snippets/neosnippets,~/.config/nvim/snippets/'
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
