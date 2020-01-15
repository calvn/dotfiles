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

if test $(which kubectl)
then
  alias kc="kubectl"
fi

# Vault dev server
if test $(which vault)
then
  alias vlt-dev="vault server -dev -dev-root-token-id=root"
  alias vlt-ent-build="make premdev"
fi