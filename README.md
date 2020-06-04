yanked-buffer.vim :paperclip:
=============================

Tiny helpers to manage buffers.

Features
--------

This plugin provides these two commands:

- **YankedBufferQ:** Just like `:q` command, except it remembers the buffer number closed by this command.
- **YankedBufferP:** Reopen the last buffer which has been closed by `YankedBufferQ`.

Common Use Case
---------------

- Moving a buffer from a tab to another
  1. Run `:YankedBufferQ` on the buffer that you want to move
  2. Move to the tab where you want to move the buffer to
  3. Reopen the buffer by `YankedBufferP`
- Reopening a buffer that was hidden by mistake

Installation
------------

Use your favorite plugin manager:

```vim
Plug 'gitusp/yanked-buffer'
```

Recommended Settings
--------------------

Mapping `<C-W><C-Q>` to `<Plug>(yanked-buffer-q)` does not change Vim's default behavior but just extends it to remember the buffer closed, it's highly recommended.  
Mapping `<C-W>Q` to `<Plug>(yanked-buffer-p)` is optional.

```vim
" Required to keep hidden buffers alive.
set hidden

" Key mappings
nmap <C-W>q     <C-W><C-Q>
nmap <C-W><C-Q> <Plug>(yanked-buffer-q)
nmap <C-W>Q     <Plug>(yanked-buffer-p)
```

_Internally, `<Plug>(yanked-buffer-q)` is mapped to `:YankedBufferQ` and `<Plug>(yanked-buffer-p)` is mapped to `:YankedBufferP`._
