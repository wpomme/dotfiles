#!/bin/zsh
# load aliases
if [ -f "$HOME/.aliases" ]; then
. "$HOME/.aliases"
fi

# CPU Architecture
export ARCH=`uname -m`

# ENV Variables for PATH
export USR=/usr/local/bin
export BREW=/opt/homebrew

export MYCMD=$HOME/.bin
export BREWBIN=$BREW/bin
export BREWSBIN=$BREW/sbin

# brew command
if [[ $ARCH == 'arm64' ]]; then
    alias brew="/opt/homebrew/bin/brew"
else
    alias brew="/usr/local/bin/brew"
fi

# PATH
if [ -f "$HOME/.local-zprofile" ]; then
. "$HOME/.local-zprofile"
fi
PATH="$USR:$MYCMD:$BREWBIN:$BREWSBIN:$PATH"

# prompt
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# git-prompt
source $HOME/.git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

precmd() {
    __git_ps1 %n@${ARCH}$%~ '%# ' ' (%s)'
}

# node
[[ -d ~/.nodenv ]] && \
    export PATH=${HOME}/.nodenv/bin:${PATH} && \
    eval "$(nodenv init -)"

# starship
[[ -f ~/.config/starship.toml ]] && \
    eval "$(starship init zsh)"

# deduplicate PATH
typeset -U path PATH
