" Vim 101: Completion Compendium - http://goo.gl/BviGpb
" Dictionary completions - http://goo.gl/wkrKZA
:set complete-=k complete+=k

" Completion using a syntax file - http://goo.gl/lc3cq6
au FileType * exe('setl dict+=~/.vim/ultisnips/'.&filetype.'.snippets')
