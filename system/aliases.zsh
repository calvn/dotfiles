# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lLAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

if $(command -v kubectl &>/dev/null)
then
  alias kc="kubectl"
fi