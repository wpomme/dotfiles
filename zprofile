#!/bin/zsh
if [ -f "$HOME/.aliases" ]; then
. "$HOME/.aliases"
fi

export ARCH=`uname -m`
# export NODE_V=12.18.3
# export GO_V=1.12.9
export USR=/usr/local

export USRPATH=$USR/bin
# 未使用
# export GOROOT=$USR/Cellar/go/$GO_V/libexec
# export GOPATH=$HOME/.go
# 未使用 (nodenv or nodebrew)
# export JSPATH=$HOME/.nodebrew/node/v$NODE_V/bin
# export NODEPATH=$HOME/.nodebrew/current/bin
# 未使用
# export RUSTPATH=$HOME/.cargo/bin
# 未使用 (GCP)
# export GCPROOT=$USR/Caskroom/google-cloud-sdk
# export GCPPATH=$GCPROOT/latest/google-cloud-sdk
# export PATHINC=$GCPPATH/path.zsh.inc
# export COMPINC=$GCPPATH/completion.zsh.inc
export HOMEBREW=/opt/homebrew/bin
export HOMEBREWSBIN=/opt/homebrew/sbin
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
# export PROMPT="%n@%m(`uname -m`) %1~ %# "

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

precmd() {
    __git_ps1 %n@${ARCH}$%~ '%# ' ' (%s)'
}

PATH="$USRPATH:$HOME/.bin:$HOME/.local:$HOMEBREW:$OPENSSLPATH:$MYSQLPATH:$HOMEBREWSBIN:$PATH"

# GCP
# if [ -d $GCPROOT ]; then
#   source $PATHINC
#   source $COMPINC
# fi

# ruby
[[ -d ~/.rbenv  ]] && \
  export PATH=${HOME}/.rbenv/bin:${PATH} && \
  eval "$(rbenv init -)"
