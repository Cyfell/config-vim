set hlsearch

" returns a string <branch/XX> where XX corresponds to the git status
" (for example "<master/ M>")
function! CurrentGitStatus()
    let gitoutput = systemlist('cd '.expand('%:p:h:S').' && parse_git_branch 2>/dev/null')
    if len(gitoutput) > 0
        "let b:gitstatus = strpart(get(gitoutput,0,''),3) .'/'. strpart(get(gitoutput,1,' '),1,2)
        let b:gitstatus = get(gitoutput,0,'')
    else
        let b:gitstatus = ''
    endif
endfunc
"autocmd BufEnter,BufWritePost * call CurrentGitStatus()

"set statusline=%f\ %y\ [%{&fileencoding?&fileencoding:&encoding}]\ [%{&ff}]\ \ \ \ \ %l/%L%=%(<%{b:gitstatus}>%)\ %P
"set laststatus=2
set statusline=%f\ %y\ [%{&fileencoding?&fileencoding:&encoding}]\ [%{&ff}]\ \ \ \ \ %l/%L%=%P
