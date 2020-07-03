nmap <silent> <F2> =G
nmap <silent> <F3> :NERDTreeToggle<CR>
nmap <silent> <F4> <C-w><C-w>
nmap <silent> <F5> "zyiw:exe "ta ".@z.""<CR>
nmap <silent> <F6> :TagbarToggle<CR>
nmap <silent> <F7> :set list<CR>
nmap <silent> <F8> :set nolist<CR>

"Remove all trailing whitespace by pressing F9
nnoremap <F9> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Resize frames using same shortcuts than nav 
map <C-j> <C-W>-
map <C-k> <C-W>+
map <C-l> <C-W><
map <C-h> <C-W>>

" Navigate through tabs
map <A-Right> gt
map <A-Left> gT

" Move tabs
map <silent> <C-A-Right> :+tabmove<CR>
map <silent> <C-A-Left> :-tabmove<CR>
" Indent. the nb of spaces is set by 'shiftwidth' param
map <A-Up> >>
map <A-Down> <<

