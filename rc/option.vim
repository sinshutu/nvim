set autoindent
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set undofile
set undodir=$HOME/.cache/nvim/undo
set encoding=utf-8
set fileencodings=utf-8
set clipboard&
set clipboard^=unnamedplus

if has('win32') || has('win64')
  let g:clipboard = {
    \   'name': 'WinClipboard',
    \   'copy': {
    \      '+': 'win32yank.exe -i',
    \      '*': 'win32yank.exe -i',
    \    },
    \   'paste': {
    \      '+': 'win32yank.exe -o',
    \      '*': 'win32yank.exe -o',
    \   },
    \   'cache_enabled': 1,
    \ }
endif
