autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <silent> <F3> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
