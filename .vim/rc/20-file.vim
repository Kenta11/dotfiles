" "echo "loading 20-file.vim"

set fenc=UTF-8
set nobackup

" setting tab
" Makefile
if expand("%:r") == 'Makefile'
  set noexpandtab
" tex
elseif expand("%:e") == "tex"
  set expandtab
  set tabstop=2
else
  set expandtab
  set tabstop=4
endif
