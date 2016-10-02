"q でquickfixを閉じれるようにする。
let g:quickrun_no_default_key_mappings = 1
nnoremap \r :write<CR>:QuickRun -mode n<CR>
xnoremap \r :<C-U>write<CR>gv:QuickRun -mode v<CR>

"\r で保存してからquickrunを実行する。
let g:quickrun_no_default_key_mappings = 1
nnoremap \r :cclose<CR>:write<CR>:QuickRun -mode n<CR>
xnoremap \r :<C-U>cclose<CR>:write<CR>gv:QuickRun -mode v<CR>

"<C-c> でquickrunを停止
nnoremap <expr><silent> <C-c> quickrun#is_running() ? quickrun#sweep_sessions() : "\<C-c>"

"ノーマルモードでF6で日付挿入
nmap <F6> <ESC>i<C-R>=strftime("%Y/%m/%d")<CR><CR>
