# Uses git's autocompletion for inner commands. Assumes an install of git's
# bash `git-completion` script at $completion below (this is where Homebrew
# tosses it, at least).
if (( $+commands[brew] ))
then
  completion_dir="$(brew --prefix)/share/zsh/site-functions"

  if [[ -f "$completion_dir/_git" ]]
  then
    fpath=("$completion_dir" $fpath)
    autoload -Uz _git
    compdef _git git
  fi

  unset completion_dir
fi
