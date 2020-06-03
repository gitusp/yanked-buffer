yanked-buffer.vim :paperclip:
=============================

Tiny helpers to manage buffers.

Features
--------

This just provides these two commands:

- **YankedBufferQ:** Just like `:q` command, except it remembers the buffer closed.
- **YankedBufferP:** Reopen the last buffer which has been closed by `YankedBufferQ`.

Common Use Case
---------------

While this plugin is general-purpose, initially it was invented to move buffers from a tab to another. With this plugin, you can simply close a buffer with `YankedBufferQ` command, and reopen the buffer with `YankedBufferP` command wherever you want.

Installation
------------

Use your favorite plugin manager:

```vim
Plug 'gitusp/yanked-buffer'
```

Recommended Settings
--------------------

```vim
" Required to keep hidden buffers alive.
set hidden

" Key mappings
nmap <C-W>q     <C-W><C-Q>
nmap <C-W><C-Q> <Plug>(yanked-buffer-q)
nmap <C-W>Q     <Plug>(yanked-buffer-p)
```
