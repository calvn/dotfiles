#!/bin/sh

if [ ! -f ~/.vim/autoload/plug.vim ]
then
  echo "  Installing vim-plug for you."
  curl -fLos ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi