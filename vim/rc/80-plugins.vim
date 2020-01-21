"80-plugins.vim"

if &compatible
    set nocompatible
endif

if has("unix")
    set runtimepath+=~/.vim/plugin-manager/dein/dein.vim/
    let s:path_to_dot_vim = expand('~/.vim/')
elseif has("win64")
    set runtimepath+=~/vimfiles/plugin-manager/dein/dein.vim/
    let s:path_to_dot_vim = expand('~/vimfiles/')
endif

let s:path_to_dein = s:path_to_dot_vim . 'plugin-manager/dein/'
if dein#load_state(s:path_to_dein)
    call dein#begin(s:path_to_dein)

    call dein#add(s:path_to_dein . 'dein.vim')

    let g:rc_dir = s:path_to_dein . 'config/'
    call dein#load_toml(g:rc_dir . 'dein.toml',      {'lazy':0})
    call dein#load_toml(g:rc_dir . 'dein_lazy.toml', {'lazy':1})

    call dein#end()
    call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif

filetype plugin indent on
syntax enable
