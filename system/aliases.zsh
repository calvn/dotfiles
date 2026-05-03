# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if (( $+commands[gls] ))
then
  alias ls="gls -F --color"
  alias l="gls -lLAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

if (( $+commands[kubectl] ))
then
  alias kc="kubectl"
fi
