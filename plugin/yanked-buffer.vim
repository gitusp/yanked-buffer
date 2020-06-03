command! -nargs=0 YankedBufferQ let s:last_hidden_bufnr = bufnr() | q
command! -nargs=0 YankedBufferP exe 'b ' . s:last_hidden_bufnr

nnoremap <silent> <Plug>(yanked-buffer-q) :<C-u>YankedBufferQ<CR>
nnoremap <silent> <Plug>(yanked-buffer-p) :<C-u>YankedBufferP<CR>
