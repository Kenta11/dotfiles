@rem Vim
if exist %HOMEPATH%\_vimrc (goto VIMRC_TRUE) else goto VIMRC_FALSE
:VIMRC_FALSE
    mklink    %HOMEPATH%\_vimrc   %~dp0vimrc
    goto VIMRC_END
:VIMRC_TRUE
    echo "%HOMEPATH%\_vimrc already exists."
:VIMRC_END

if exist %HOMEPATH%\_vim (goto VIM_TRUE) else goto VIM_FALSE
:VIM_FALSE
    mklink /J %HOMEPATH%\vimfiles %~dp0vim
    goto VIM_END
:VIM_TRUE
    echo "%HOMEPATH%\_vim already exists."
:VIM_END

git submodule update --init --recursive
