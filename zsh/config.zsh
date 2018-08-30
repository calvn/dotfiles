export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

fpath=($ZSH/functions $fpath)

autoload -U $ZSH/functions/*(:t)

# Better history
# Credits to https://coderwall.com/p/jpj_6q/zsh-better-history-searching-with-arrow-keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF

setopt INC_APPEND_HISTORY # append history incrementally
setopt SHARE_HISTORY # share history across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt complete_aliases

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^?' backward-delete-char

# History-related bindings
# Credit: https://superuser.com/questions/446594/separate-up-arrow-lookback-for-local-and-global-zsh-history
up-line-or-local-history() {
  zle set-local-history 1
  zle up-line-or-search
  zle set-local-history 0
}
zle -N up-line-or-local-history
down-line-or-local-history() {
  zle set-local-history 1
  zle down-line-or-search
  zle set-local-history 0
}
zle -N down-line-or-local-history

# The up[down]-line-or-beginning-search commands does not work well when toggling local history in between so have this
# separately for when trying to search a multi-word command from the history. This search will be on the global history.
# The escape keys can be checked with ctrl+v.
# Partly taken from https://superuser.com/questions/446594/separate-up-arrow-lookback-for-local-and-global-zsh-history
bindkey '^[[A' up-line-or-local-history     # Cursor up
bindkey '^[[B' down-line-or-local-history   # Cursor down
bindkey '^[[5~' up-line-or-beginning-search    # [ALT] + Cursor up
bindkey '^[[6~' down-line-or-beginning-search  # [ALT] + Cursor down
bindkey "^[[1;5A" up-line-or-search    # [CTRL] + Cursor up
bindkey "^[[1;5B" down-line-or-search  # [CTRL] + Cursor down
