"20-file.vim

set encoding=utf-8
set fenc=UTF-8
set nobackup
set noundofile

" setting tab
" Makefile
if expand("%:r") == 'Makefile'
    set noexpandtab
" tex
else
    set expandtab
    set tabstop=2
    set softtabstop=2
    set shiftwidth=2
endif
