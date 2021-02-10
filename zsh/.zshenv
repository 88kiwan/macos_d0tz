SHELL_SESSIONS_DISABLE="1"

# Default dirs
[[ "$XDG_CACHE_HOME" ]] || export XDG_CACHE_HOME="$HOME/.cache"
[[ "$XDG_CONFIG_HOME" ]] || export XDG_CONFIG_HOME="$HOME/.config"
[[ "$XDG_DATA_HOME" ]] || export XDG_DATA_HOME="$HOME/.local/share"

# Vars
export EDITOR="nvim"
export VISUAL="$EDITOR"
export SUDO_EDIT="$EDITOR"
export DTZ_DIR="$HOME/.d0tz"
export BREW_HOME="/opt/homebrew"
export N_PREFIX="$XDG_DATA_HOME/n"
export ZPLUGS="$XDG_DATA_HOME/zsh-plugins"
export NVIM_LOG_FILE="$XDG_CACHE_HOME/nvim/log"

# Zsh .dir
ZDOTDIR="${ZDOTDIR:-$DTZ_DIR/zsh}"

# Man page colors
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;36m'
export LESS_TERMCAP_us=$'\E[01;33m'
export LESS_TERMCAP_so=$'\E[01;30;03;36m'

