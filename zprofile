#!/bin/zsh
if [ -f "$HOME/.aliases" ]; then
. "$HOME/.aliases"
fi

export NODE_V=12.9.1
export GO_V=1.12.9
export USR=/usr/local

export USRPATH=$USR/bin
export GOROOT=$USR/Cellar/go/$GO_V/libexec
export GOPATH=$HOME/.go
export JSPATH=$HOME/.nodebrew/node/v$NODE_V/bin
export RUSTPATH=$HOME/.cargo/bin
export GCPROOT=$USR/Caskroom/google-cloud-sdk
export GCPPATH=$GCPROOT/latest/google-cloud-sdk
export PATHINC=$GCPPATH/path.zsh.inc
export COMPINC=$GCPPATH/completion.zsh.inc

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# git-prompt
source $HOME/.git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

PATH="$USRPATH:$HOME/.bin:$HOME/.local:$GOROOT/bin:$GOPATH:$JSPATH:$RUSTPATH:$PATH"

if [ -d $GCPROOT ]; then
  source $PATHINC
  source $COMPINC
fi
