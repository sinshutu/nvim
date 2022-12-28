set notitle

set noswapfile
set wrap

set number

set clipboard=unnamedplus

set foldmethod=manual

set shiftwidth=4

set incsearch
set nohlsearch
set ignorecase

set wildmenu

set undofile
set undodir=$HOME/.cache/nvim/undo

set encoding=utf-8
set ambiwidth=double
set fileencodings=utf-8

set laststatus=2

" for coc-vim
set cmdheight=2
set updatetime=300
set shortmess+=c
nmap <silent> <C-p> <Plug>(coc-diagnostic-prev)
nmap <silent> <C-n> <Plug>(coc-diagnostic-next)
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

"template
autocmd! BufNewFile *.html 0r $HOME/.config/nvim/template/html.txt
autocmd! BufNewFile *.py 0r $HOME/.config/nvim/template/py.txt
autocmd! BufNewFile *.c 0r $HOME/.config/nvim/template/c.txt
autocmd! BufNewFile *.java 0r $HOME/.config/nvim/template/java.txt
autocmd! BufNewFile *.sh 0r $HOME/.config/nvim/template/sh.txt
autocmd! BufNewFile *.scala 0r $HOME/.config/nvim/template/scala.txt
autocmd! BufNewFile *.md 0r $HOME/.config/nvim/template/md.txt
autocmd! BufNewFile *.rb 0r $HOME/.config/nvim/template/ruby.txt

"" 折りたたみを有効
set foldenable
set foldlevel=2

" シンタックスに従い折りたたみ
set foldmethod=syntax

" カーソルが移動した時に自動で折りたたみを開く
set foldopen=block,hor,mark,percent,quickfix,search,tag,undo

"保存時に文末の空白を削除
autocmd BufWritePre * :%s/\s\+$//ge

"golang
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
