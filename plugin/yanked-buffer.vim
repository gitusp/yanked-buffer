if exists('g:loaded_yanked_buffer')
  finish
endif
let g:loaded_yanked_buffer = 1

augroup yanked_buffer
  autocmd!
  autocmd QuitPre * let s:last_hidden_bufnr = bufnr()
augroup END

command! -nargs=0 YankedBufferP exe 'b ' . s:last_hidden_bufnr

nnoremap <silent> <Plug>(yanked-buffer-p) :<C-u>YankedBufferP<CR>
