"10-system.vim"

" Python setting
if has('pythonx')
    set pyxversion=3
elseif has('python3')
    set pyxversion=3
elseif has('python2')
    set pyxversion=2
endif
