"80-plugins.vim"

if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/plugin-manager/dein/repos/github.com/Shougo/dein.vim

if dein#load_state(expand('~/.vim/plugin-manager/dein/'))
  call dein#begin(expand('~/.vim/plugin-manager/dein/'))
  
    let g:rc_dir      = expand('~/.vim/plugin-manager/dein/config')
    let s:toml        = g:rc_dir . '/dein.toml'
    let s:lazy_toml   = g:rc_dir . '/dein_lazy.toml'

    call dein#load_toml(s:toml,      {'lazy':0})
    call dein#load_toml(s:lazy_toml, {'lazy':1})

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable
