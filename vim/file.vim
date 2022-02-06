"file.vim

set encoding=utf-8
set fenc=UTF-8
set nobackup
set noundofile

" tab setting
if expand("%:r") == 'Makefile' || expand("%:e") == 'mak'
    set noexpandtab
else
    set expandtab
    set tabstop=2
    set softtabstop=2
    set shiftwidth=2
endif
