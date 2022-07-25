#!/bin/sh

# Install vim-plug for vim
if [ ! -f ~/.vim/autoload/plug.vim ] ||  [ ! -d ~/.vim/plugged ]
then
  echo "  Installing vim-plug onto vim directory"
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
    if [ ! -d ~/.vim/plugged ]
    then
      vim +'PlugInstall --sync' +qa
    fi
fi

# Install vim-plug for neovim
if test $(which nvim) && [ ! -f ~/.local/share/nvim/site/autoload/plug.vim ]
then
  echo "  Installing vim-plug onto neovim data directory"
  curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi