@rem Vim
if exist %HOMEPATH%\_vimrc (goto VIMRC_TRUE) else goto VIMRC_FALSE
:VIMRC_TRUE
mklink    %HOMEPATH%\_vimrc   %~dp0.vimrc
:VIMRC_FALSE
echo "%HOMEPATH%\_vimrc already exists."

if exist %HOMEPATH%\_vimrc (goto VIM_TRUE) else goto VIM_FALSE
:VIM_TRUE
mklink /J %HOMEPATH%\vimfiles %~dp0.vim
:VIM_FALSE
echo "%HOMEPATH%\_vim already exists."

git submodule update --init --recursive
