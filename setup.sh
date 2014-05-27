#!/bin/sh

TIN_VIM_DIR="$PWD"

unlink ~/.vimrc
unlink ~/.gvimrc
unlink ~/.vim

ln -s $TIN_VIM_DIR/ ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

ls -al ~/.*vim*