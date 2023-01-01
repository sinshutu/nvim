" Start dein scripts -----------------------------
let s:dein_base = '~/.config/nvim'
let s:dein_src = s:dein_base . '/repos/github.com/Shougo/dein.vim'
execute 'set runtimepath+=' . s:dein_src

" Load Plugins:
if dein#min#load_state(s:dein_base)
  call dein#begin(s:dein_base)
  " Local Plugins:
  let s:toml      = s:dein_base . '/plugins/plugins.toml'
  let s:lazy_toml = s:dein_base . '/plugins/plugins_lazy.toml'
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif
" End dein scripts -------------------------------

" Default Settings:
filetype plugin indent on
syntax enable
colorscheme onedark

" Load Settings:
runtime! rc/*.vim
