augroup MyAutoCmd
  autocmd!
augroup END

" vim
autocmd MyAutoCmd FileType vim call s:setVimOnly()
function! s:setVimOnly()
  set foldmethod=marker
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
endfunction

" Python
autocmd MyAutoCmd FileType python call s:setPythonOnly()
function! s:setPythonOnly()
  set expandtab
  set tabstop=4
  set shiftwidth=4
  set softtabstop=4
  set autoindent
  set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
  set colorcolumn=80
endfunction

" html
autocmd MyAutoCmd BufNewFile,BufRead *.{html,xml,erb} set filetype=html
autocmd MyAutoCmd FileType html call s:setHtmlOnly()
function! s:setHtmlOnly()
  set noautoindent
  set nosmartindent
  set expandtab
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
endfunction

" javascript
autocmd MyAutoCmd FileType javascript call s:setJavascriptOnly()
function! s:setJavascriptOnly()
  set foldlevel=1
  set foldnestmax=99
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set autoindent
endfunction

" tex
autocmd MyAutoCmd FileType tex call s:setTexOnly()
function! s:setTexOnly()
  set expandtab
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
endfunction
augroup texfile
  autocmd BufRead,BufNewFile *.tex set filetype=tex
  let md_to_latex  = "pandoc --from=markdown --to=latex"
  autocmd Filetype tex let &formatprg=md_to_latex
augroup END

" java
autocmd MyAutoCmd FileType java call s:setJavaOnly()
function! s:setJavaOnly()
  set tabstop=4
  set shiftwidth=4
  set softtabstop=4
  set autoindent
  set smartindent
endfunction

" markdown
autocmd MyAutoCmd BufRead,BufNewFile *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
autocmd MyAutoCmd FileType markdown call s:setMarkdownOnly()
function! s:setMarkdownOnly()
  set foldlevel=1
  set foldnestmax=3
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set formatoptions+=or
  set conceallevel=0
endfunction

" shell script
autocmd MyAutoCmd FileType sh call s:setShellScriptOnly()
autocmd MyAutoCmd FileType zsh call s:setShellScriptOnly()
function! s:setShellScriptOnly()
  set tabstop=4
  set shiftwidth=4
  set softtabstop=4
endfunction

" Scala
autocmd MyAutoCmd BufRead,BufNewFile *.scala set filetype=scala
autocmd MyAutoCmd FileType scala call s:setScalaOnly()
function! s:setScalaOnly()
  set tabstop=4
  set shiftwidth=4
  set softtabstop=4
  set autoindent
  set smartindent
endfunction

" Ruby
autocmd MyAutoCmd BufRead,BufNewFile *.{ru,rb} set filetype=ruby
autocmd MyAutoCmd FileType ruby call s:setRubyOnly()
function! s:setRubyOnly()
  set expandtab
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set autoindent
  set colorcolumn=80
endfunction

" Vue
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
autocmd MyAutoCmd FileType vue call s:setVueOnly()
function! s:setVueOnly()
  set expandtab
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set autoindent
  syntax sync fromstart
endfunction

au FileType qf nnoremap <silent><buffer>q :quit<CR>
