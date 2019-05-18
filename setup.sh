#!/usr/bin/env bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)

# Vim
if [ ! -e ~/.vimrc ]; then
    ln -sf ${SCRIPT_DIR}/.vimrc ~/.vimrc
else
    echo "~/.vimrc already exists"
fi
if [ ! -e ~/.vim ]; then
    ln -sf ${SCRIPT_DIR}/.vim ~/.vim
else
    echo "~/.vim already exists"
fi


# Zsh
if [ ! -e ~/.zshrc ]; then
    ln -sf ${SCRIPT_DIR}/.zshrc ~/.zshrc
else
    echo "~/.zshrc already exists"
fi


git submodule update --init --recursive
