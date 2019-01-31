---
---

# Vim

On Unix-based systems copy [the syntax file `marc.vim`](marc.vim) to
`~/.vim/syntax/marc.vim` and add the following line to your `~/.vrimrc`:

~~~vim
au BufRead,BufNewFile *.{marc,mrc,mrk,pica,pp} set filetype=marc
~~~

The actual layout depends on your [vim color scheme](https://vimcolors.com/).
