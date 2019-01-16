#!/bin/bash

ln -sf `pwd`/.vimrc ~/.vimrc
if [ ! -f ~/.vim/autoload/plug.vim ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
cp -R templates ~/.vim/

