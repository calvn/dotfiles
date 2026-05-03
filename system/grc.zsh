# GRC colorizes nifty unix tools all over the place
if (( $+commands[grc] )) && (( $+commands[brew] ))
then
  grc_config="$(brew --prefix)/etc/grc.bashrc"
  [[ -f "$grc_config" ]] && source "$grc_config"
  unset grc_config
fi
