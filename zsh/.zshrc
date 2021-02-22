# GnuPG
export GPG_TTY="$(tty)"
export GPGKEY="0x13BBA172DF6DAEA5"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

# Prompt
[ -r "$XDG_CACHE_HOME/p10k-instant-prompt-${(%):-%n}.zsh" ] && \. $XDG_CACHE_HOME/p10k-instant-prompt-${(%):-%n}.zsh
source $ZDOTDIR/.p10k && source $ZPLUGS/powerlevel10k/powerlevel10k.zsh-theme

# General
setopt nobeep
setopt correct
setopt globdots
setopt nocaseglob
setopt nocheckjobs
setopt extendedglob
setopt no_correctall
setopt rcexpandparam
setopt numericglobsort
setopt autocd extendedglob nomatch completealiases

# History
histDir="$XDG_CACHE_HOME/zsh"
[ -d $histDir ] || mkdir -p $histDir
export HISTSIZE="5000"
export SAVEHIST=$((HISTSIZE/2))
export HISTFILE="$histDir/zhistory"
setopt HIST_VERIFY
setopt APPEND_HISTORY
setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_EXPIRE_DUPS_FIRST

# LS Colors
eval $(gdircolors -b $DTZ_DIR/dir_colors)

# End of line char.
PROMPT_EOL_MARK=''

# Aliases
alias vi='nvim'
alias sudo='sudo '
alias ...='cd ../..'
alias rm='rm -r' cp='cp -r' mk='mkdir -p'
alias ls='gls --color -h --group-directories-first' la='ls -A'
alias grep='grep --color=auto' egrep='egrep --color=auto' fgrep='fgrep --color=auto'

# Functions
cl() {cd "$1" && la;}
bak() {cp -r "$1"{,.bak};}
goto() {[ -d "$1" ] && cd "$1" || cd "$(dirname "$1")";}
mvf() {mv "$@" && goto "$_";}
cpf() {cp "$@" && goto "$_";}
mkf() {mkdir -p "$@" && goto "$_";}
ext() {
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2) tar xvjf $1  ;;
			*.tar.gz)  tar xvzf $1  ;;
			*.tar.xz)  tar xvJf $1  ;;
			*.bz2)     bunzip2 $1   ;;
			*.rar)     unrar x $1   ;;
			*.gz)      gunzip $1    ;;
			*.tar)     tar xvf $1   ;;
			*.tbz2)    tar xvjf $1  ;;
			*.tgz)     tar xvzf $1  ;;
			*.zip)     unzip $1     ;;
			*.Z)       uncompress $1;;
			*.7z)      7z x $1      ;;
			*.xz)      unxz $1      ;;
			*.exe)     cabextract $1;;
			*)         echo "\`$1': unrecognized file compression";;
			esac
	else
		echo "\`$1' is not a valid file"
	fi
}

## Plugins
source $ZPLUGS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZPLUGS/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#666666,bold,underline"
bindkey '^ ' autosuggest-execute
source $ZPLUGS/zsh-history-substring-search/zsh-history-substring-search.zsh
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND="bg=cyan,fg=black,bold"
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND="bg=red,fg=white,bold"
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
fpath=($ZPLUGS/zsh-completions/src \
	$(brew --prefix)/share/zsh/site-functions $fpath)
autoload -Uz compinit && compinit -d $XDG_CACHE_HOME/zsh/zcompdump
zmodload zsh/complist
zstyle ':completion:*' completer _complete _correct _approximate
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' completer _expand_alias _complete _approximate
zstyle ':completion:*' menu select
zstyle ':completion:*' file-sort name
zstyle ':completion:*' ignore-parents pwd
zstyle ':completion:*' list-colors \
	"di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
zstyle ':completion:*:options' list-colors '=*=01;33'
zstyle ':completion::complete:*' cache-path $XDG_CACHE_HOME/zsh
zstyle :compinstall filename '$ZDOTDIR/.zshrc'

# Manual pages
bindkey '^h' run-help

# Fix iTerm move around
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line
bindkey '^[b' backward-word
bindkey '^[f' forward-word

# Vi mode
bindkey -v
export KEYTIMEOUT=1
autoload edit-command-line; zle -N edit-command-line
zle-keymap-select(){
if [ $KEYMAP = vicmd ]; then
	printf "\033[1 q"
else
	printf "\033[5 q"
fi
}
zle -N zle-keymap-select
zle-line-init(){
	zle -K viins
	printf "\033[5 q"
}
zle -N zle-line-init
bindkey -M vicmd '^e' edit-command-line
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

