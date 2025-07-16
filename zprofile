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

# git-prompt
source $HOME/.git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

precmd() {
    __git_ps1 %n@${ARCH}$%~ '%# ' ' (%s)'
}

# ruby
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
eval "$(rbenv init - zsh)"

# pyenv
[[ -d ~/.pyenv ]] && \
    export PATH=${HOME}/.pyenv/shims:${PATH} && \
    eval "$(pyenv init -)"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# deduplicate PATH
typeset -U path PATH

# gcc
export SDKROOT="$(xcrun --sdk macosx --show-sdk-path)"

# java
export JAVA_HOME="$(/usr/libexec/java_home)"
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-8.jdk/Contents/Home

# zoxide
eval "$(zoxide init zsh)"
