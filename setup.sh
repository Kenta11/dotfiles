#!/usr/bin/env bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
LINK_A_FILE () {
    if [ ! -e ~/$1 ]; then
        ln -sf ${SCRIPT_DIR}/$1 ~/$1
    else
        echo "~/$1 already exists"
    fi
}

LINK_A_FILE .vimrc
LINK_A_FILE .vim
LINK_A_FILE .zshrc
LINK_A_FILE .gitconfig
touch ~/.zshrc_local

git submodule update --init --recursive
