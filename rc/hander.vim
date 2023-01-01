" 保存時に文末の空白を削除
autocmd BufWritePre * :%s/\s\+$//ge

autocmd FileType qf nnoremap <silent><buffer>q :quit<CR>
