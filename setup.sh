#!/usr/bin/env bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
LINK_A_FILE () {
    if [ ! -e ~/.$1 ]; then
        ln -sf ${SCRIPT_DIR}/$1 ~/.$1
    else
        echo "~/.$1 already exists"
    fi
}

# Vim
LINK_A_FILE vimrc
LINK_A_FILE vim
# Zsh
LINK_A_FILE zshrc
touch ~/.zshrc_local
# Git
LINK_A_FILE gitconfig

git submodule update --init --recursive
