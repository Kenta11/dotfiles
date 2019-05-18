#!/usr/bin/env bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)

# Vim
ln -sf `echo ${SCRIPT_DIR}/.vimrc` ~/.vimrc
ln -sf `echo ${SCRIPT_DIR}/.vim` ~/.vim

# Zsh
ln -sf `echo ${SCRIPT_DIR}/.zshrc` ~/.zshrc

git submodule update --init --recursive
