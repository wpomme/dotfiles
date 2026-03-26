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

# homebrew
alias brew="/opt/homebrew/bin/brew"
eval "$(/opt/homebrew/bin/brew shellenv)"

# PATH
PATH="$USR:$MYCMD:$BREWBIN:$BREWSBIN:$PATH"

# go (arm64)
if [[ $ARCH == 'arm64' ]]; then
    export GOPATH=$HOME/go
    export PATH=$PATH:$GOPATH/bin
fi

# prompt
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# Command History
HISTSIZE=10000
HISTFILESIZE=10000
## 連続して繰り返し実行されたコマンドは、履歴に追加しない
HISTCONTROL=ignoredups

# git-prompt
source $HOME/.git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

precmd() {
    __git_ps1 %n@${ARCH}$%~ '%# ' ' (%s)'
}

# Ruby
# export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
eval "$(rbenv init - zsh)"

# mise
eval "$(mise activate zsh)"

# gcc
export SDKROOT="$(xcrun --sdk macosx --show-sdk-path)"

# java
export JAVA_HOME="$(/usr/libexec/java_home)"

# zoxide
eval "$(zoxide init zsh)"

# deduplicate PATH
typeset -U path PATH
