" Set automatic reload
set autoread

" Trigger when cursor stop moving 
au CursorHold,CursorHoldI * checktime

" Trigger on buffer change or terminal focus
au FocusGained,BufEnter * :checktime
