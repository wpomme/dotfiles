#!/bin/zsh
if [ -f "$HOME/.aliases" ]; then
. "$HOME/.aliases"
fi

export ARCH=`uname -m`

export USRPATH=/usr/local/bin
export MYCMD=$HOME/.bin
export HOMEBREW=/opt/homebrew/bin
export HOMEBREWSBIN=/opt/homebrew/sbin
# for work
export MYSQLPATH=/opt/homebrew/bin/mysql
export OPENSSLPATH=/opt/homebrew/opt/openssl@1.1/bin

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# brew command
if [[ $ARCH == 'arm64' ]]; then
    alias brew="/opt/homebrew/bin/brew"
else
    alias brew="/usr/local/bin/brew"
fi

# git-prompt
source $HOME/.git-prompt.sh

# prompt
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

precmd() {
    __git_ps1 %n@${ARCH}$%~ '%# ' ' (%s)'
}

# PATH
PATH="$USRPATH:$MYCMD:$HOMEBREW:$OPENSSLPATH:$MYSQLPATH:$HOMEBREWSBIN:$PATH"

# node
[[ -d ~/.nodenv ]] && \
    export PATH=${HOME}/.nodenv/bin:${PATH} && \
    eval "$(nodenv init -)"

# ruby
[[ -d ~/.rbenv  ]] && \
    export PATH=${HOME}/.rbenv/bin:${PATH} && \
    eval "$(rbenv init -)"

# starship
[[ -f ~/.config/starship.toml ]] && \
    eval "$(starship init zsh)"
