"control.vim

set autoindent
set ambiwidth=double
set pastetoggle=<F2>
set ignorecase
set backspace=indent,eol,start

" binary mode setting
augroup BinaryXXD
    autocmd!
    autocmd BufReadPre     *.bin let &binary =1
    autocmd BufReadPost  * if &binary | silent %!xxd -g 1
    autocmd BufReadPost  * set ft=xxd | endif
    autocmd BufWritePre  * if &binary | %!xxd -r | endif
    autocmd BufWritePost * if &binary | silent %!xxd -g 1
    autocmd BufWritePost * set nomod | endif
augroup END
