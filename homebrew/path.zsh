if [[ -x /opt/homebrew/bin/brew ]]
then
  export HOMEBREW_PREFIX="/opt/homebrew"
elif [[ -x /usr/local/bin/brew ]]
then
  export HOMEBREW_PREFIX="/usr/local"
else
  export HOMEBREW_PREFIX="${HOMEBREW_PREFIX:-/opt/homebrew}"
fi

export PATH="$HOMEBREW_PREFIX/bin:$HOMEBREW_PREFIX/sbin:$PATH"
