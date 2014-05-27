set guioptions=ce
set antialias
colorscheme ir_black
set linespace=2

if has("gui_macvim")
  set guifont=Monaco:h15
elseif has("gui_gtk")
  set guifont=Monospace\ 12
else
  set guifont=Monaco:h15
end

if has("gui_gtk")
  " add a new line without entering insert mode
  noremap <CR> o<Esc>

  " map backspce to delete a character
  noremap <BS> X

  " map ctrl+c and ctrl+v
  noremap <C-c> y
  noremap <C-v> P

  " cancel searched highlight
  noremap ; :nohlsearch<CR>

  " navigating for long lines
  map j gj
  map k gk
  map <UP> gk
  map <DOWN> gj
  " imap <UP> <ESC>gk<RIGHT>i
  " imap <DOWN> <ESC>gj<RIGHT>i

  " select ALL
  map <C-A> ggVG  
endif

if has("gui_macvim")
  set transparency=0

  " disable IM while leaving insert mode
  autocmd InsertEnter * set noimdisable
  autocmd InsertLeave * set imdisable

  " move a line of text using ALT+[jk] or Comamnd+[jk] on mac
  nmap <D-j> mz:m+<cr>`z
  nmap <D-k> mz:m-2<cr>`z
  vmap <D-j> :m'>+<cr>`<my`>mzgv`yo`z
  vmap <D-k> :m'<-2<cr>`>my`<mzgv`yo`z

  " disable default menu hot key
  macmenu &File.New\ Window key=<nop>
  macmenu &File.Close key=<nop>

  " remap cmd + w to close tab
  map <D-w> :tabclose<CR>

  " remap cmd + n to new tab
  map <D-n> :tabnew<CR>

  " map cmd + enter to switch to full screen
  map <D-Enter> :set invfu<CR>

  " map cmd+1~9 to switch tab 1~9
  for i in range(1, 9)
    exec "nnoremap <D-".i."> ".i."gt"
  endfor

endif
