"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

let s:dein_dir = '~/.config/nvim/.'

" Required:
set runtimepath+=~/.config/nvim/./repos/github.com/Shougo/dein.vim

" Required:
"if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  let s:toml      = s:dein_dir . '/plugins/plugins.toml'
  let s:lazy_toml = s:dein_dir . '/plugins/plugins_lazy.toml'
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
"endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
runtime! rc/*.vim
