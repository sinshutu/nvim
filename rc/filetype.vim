augroup MyAutoCmd
  autocmd!
augroup END

" vim
autocmd MyAutoCmd FileType vim call s:setVimOnly()
function! s:setVimOnly()
  set foldmethod=marker
endfunction

" Ruby
autocmd MyAutoCmd BufRead,BufNewFile *.{ru,rb} set filetype=ruby
autocmd MyAutoCmd FileType ruby call s:setRubyOnly()
function! s:setRubyOnly()
  set colorcolumn=80
endfunction

" Python
autocmd MyAutoCmd FileType python call s:setPythonOnly()
function! s:setPythonOnly()
  set tabstop=4
  set shiftwidth=4
  set softtabstop=4
  set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
  set colorcolumn=80
endfunction

" html
autocmd MyAutoCmd BufNewFile,BufRead *.{html,xml,erb} set filetype=html
autocmd MyAutoCmd FileType html call s:setHtmlOnly()
function! s:setHtmlOnly()
  set isk+=-
endfunction

" javascript
autocmd MyAutoCmd FileType javascript call s:setJavascriptOnly()
function! s:setJavascriptOnly()
  set foldlevel=1
  set foldnestmax=99
endfunction

" TypeScript
autocmd MyAutoCmd FileType typescript call s:setTypeScriptOnly()
function! s:setTypeScriptOnly()
  set foldlevel=1
  set foldnestmax=99
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
endfunction

" Vue
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue
autocmd MyAutoCmd FileType vue call s:setVueOnly()
function! s:setVueOnly()
  set isk+=-
  syntax sync fromstart
endfunction

" java
autocmd MyAutoCmd FileType java call s:setJavaOnly()
function! s:setJavaOnly()
  set tabstop=4
  set shiftwidth=4
  set softtabstop=4
endfunction

" markdown
autocmd MyAutoCmd BufRead,BufNewFile *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
autocmd MyAutoCmd FileType markdown call s:setMarkdownOnly()
function! s:setMarkdownOnly()
  set foldlevel=1
  set foldnestmax=3
  set formatoptions+=or
  set conceallevel=0
endfunction

" shell script
autocmd MyAutoCmd FileType sh call s:setShellScriptOnly()
autocmd MyAutoCmd FileType zsh call s:setShellScriptOnly()
function! s:setShellScriptOnly()
  set foldlevel=1
endfunction

"template
autocmd! BufNewFile *.html 0r $HOME/.config/nvim/template/html.txt
autocmd! BufNewFile *.py 0r $HOME/.config/nvim/template/py.txt
autocmd! BufNewFile *.c 0r $HOME/.config/nvim/template/c.txt
autocmd! BufNewFile *.java 0r $HOME/.config/nvim/template/java.txt
autocmd! BufNewFile *.sh 0r $HOME/.config/nvim/template/sh.txt
autocmd! BufNewFile *.scala 0r $HOME/.config/nvim/template/scala.txt
autocmd! BufNewFile *.md 0r $HOME/.config/nvim/template/md.txt
autocmd! BufNewFile *.rb 0r $HOME/.config/nvim/template/ruby.txt
