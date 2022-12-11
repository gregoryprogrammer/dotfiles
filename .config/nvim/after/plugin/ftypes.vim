au BufNewFile,BufRead *.py set
    \ tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ expandtab
    \ autoindent
    \ fileformat=unix

au BufNewFile,BufRead *.js set
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=2

augroup prewrites
    autocmd!
        au BufWritePre,FileWritePre * :%s/\s\+$//e | %s/\r$//e
augroup END
