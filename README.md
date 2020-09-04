yanked-buffer.vim :paperclip:
=============================

Tiny helper to manage buffers.

Feature
--------

This plugin provides **YankedBufferP** command to resume the last buffer closed.

Common Use Cases
---------------

- Moving a buffer from a tab to another
  1. Run `:q` on the buffer that you want to move
  2. Move to the tab where you want to move the buffer to
  3. Reopen the buffer by `YankedBufferP`
- Reopening a buffer that was hidden by mistake

Installation
------------

Use your favorite plugin manager:

```vim
Plug 'gitusp/yanked-buffer'
```

Example Key Mappings
--------------------

`<Plug>(yanked-buffer-p)` is mapped to `:YankedBufferP`.

```vim
nmap <C-W>Q <Plug>(yanked-buffer-p)
```
