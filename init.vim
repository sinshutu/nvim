" Be iMproved
if &compatible
  set nocompatible
endif

" Start dein scripts -----------------------------
let s:dein_dir = '~/.config/nvim/.'

set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim

" Load Plugins:
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " Local Plugins:
  " call dein#local('~/src/github.com/sinshutu', {}, ['markdown.vim'])

  let g:rc_dir    = expand("~/.config/nvim/")
  let s:toml      = s:dein_dir . '/plugins/plugins.toml'
  let s:lazy_toml = s:dein_dir . '/plugins/plugins_lazy.toml'
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

" Default Settings:
filetype plugin indent on
syntax enable
set autoindent
set expandtab
set tabstop=4

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" End dein scripts -------------------------------

" Load Settings:
runtime! rc/*.vim
