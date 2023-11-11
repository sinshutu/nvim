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
autocmd MyAutoCmd BufNewFile,BufRead *.{html,xml,erb,svelte} set filetype=html
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

" golang
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.formatDocument')
autocmd FileType go nmap gtj :CocCommand go.tags.add json<cr>
autocmd FileType go nmap gty :CocCommand go.tags.add yaml<cr>
autocmd FileType go nmap gtx :CocCommand go.tags.clear<cr>
autocmd MyAutoCmd FileType go call s:setGoLangOnly()
function! s:setGoLangOnly()
  setlocal ts=2 sts=2 noexpandtab
  setlocal makeprg=go\ build\ ./... errorformat=%f:%l:\ %m
endfunction

" template
autocmd! BufNewFile *.html r $HOME/.config/nvim/template/html.txt|0d
autocmd! BufNewFile *.py r $HOME/.config/nvim/template/py.txt|0d
autocmd! BufNewFile *.c r $HOME/.config/nvim/template/c.txt|0d
autocmd! BufNewFile *.java r $HOME/.config/nvim/template/java.txt|0d
autocmd! BufNewFile *.sh r $HOME/.config/nvim/template/sh.txt|0d
autocmd! BufNewFile *.scala r $HOME/.config/nvim/template/scala.txt|0d
autocmd! BufNewFile *.md r $HOME/.config/nvim/template/md.txt|0d
autocmd! BufNewFile *.rb r $HOME/.config/nvim/template/ruby.txt|0d
autocmd! BufNewFile *.go r $HOME/.config/nvim/template/go.txt|0d
