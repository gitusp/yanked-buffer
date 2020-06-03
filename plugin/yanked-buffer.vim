command! -nargs=0 YankedBufferQ let s:last_hidden_bufnr = bufnr() | q
command! -nargs=0 YankedBufferP exe 'b ' . s:last_hidden_bufnr
