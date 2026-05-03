#!/bin/sh

if command -v fzf >/dev/null 2>&1 && command -v brew >/dev/null 2>&1 && [ ! -f ~/.fzf.zsh ]
then
  "$(brew --prefix)/opt/fzf/install"
fi
