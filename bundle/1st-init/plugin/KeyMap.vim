" 把 Menu Alt Disable
set winaltkeys=no

nmap <silent> <F2> :NERDTreeMirrorToggle<CR>
nmap <F3> :CtrlP<CR>
nmap <F4> :BufExplorer<CR>
" nmap <F4> :TMToggle<CR>

" next and prev tab
nmap <F6> gT
" nmap <F7> gt
nmap <F7> :TagbarToggle<CR>

" shortcut to rapidly toggle `set list`
nmap <C-l> :set list!<CR>

" comment
map <Leader><Leader> <Leader>c<space>

" remap VIM 0
map 0 ^

" identation
nmap <TAB> v>
nmap <S-TAB> v<
vmap <TAB> >gv
vmap <S-TAB> <gv

" quick open vimrc in a new tab
nmap <leader>v :tabe $MYVIMRC<CR>
map <leader>h :botright :split ~/.vim/tips.txt<CR>:set syntax=help<CR>

" 將 gf 定義為另外開新分頁讀入檔案: http://goo.gl/FuIsA9
nmap gf :tabedit <cfile><CR>

" Quickfix Window toggle
nmap <leader>q :QFix<CR>

"nmap : ;

" change supertab <tab> maping to <c-tab>
let g:SuperTabMappingForward    = '<c-tab>'
let g:SuperTabMappingTabLiteral = '<tab>'

" Define the keys used to trigger UltiSnips actions
" Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger       = '<tab>'
let g:UltiSnipsJumpForwardTrigger  = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" mapping or command for quick directory change
nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>
