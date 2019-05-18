@rem Vim
mklink    %HOMEPATH%\_vimrc   %~dp0.vimrc
mklink /J %HOMEPATH%\vimfiles %~dp0.vim

git submodule update --init --recursive
