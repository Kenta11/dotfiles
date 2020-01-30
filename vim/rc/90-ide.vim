" 90-ide.vim
if $VIM_IDE_MODE == 'ON'
    autocmd VimEnter * Defx -split=vertical -winwidth=20 | wincmd p
    autocmd VimEnter * execute "bo term ++rows=8" | wincmd p
endif

autocmd BufEnter * if (winnr('$') == 2) |
\   if (getwinvar(1, '&filetype') ==# 'defx' && getwinvar(2, '&buftype') ==# 'terminal') |
\       q! |
\   endif |
\endif
autocmd BufEnter * if (winnr('$') == 2) |
\   if (getwinvar(2, '&filetype') ==# 'defx' && getwinvar(1, '&buftype') ==# 'terminal') |
\       q! |
\   endif |
\endif
autocmd BufEnter * if (winnr('$') == 1 && &filetype ==# 'defx') | q | endif
autocmd BufEnter * if (winnr('$') == 1 && &buftype ==# 'terminal') | q! | endif
