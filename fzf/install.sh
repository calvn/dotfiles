#!/bin/sh

if test $(which fzf) &&  [ ! -f ~/.fzf.zsh ]
then
  $(brew --prefix)/opt/fzf/install
fi