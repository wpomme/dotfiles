# load aliases
if [ -f "$HOME/.aliases" ]; then
. "$HOME/.aliases"
fi

# CPU Architecture
export ARCH=`uname -m`

# ENV Variables for PATH
export USR=/usr/local/bin
export MYCMD=$HOME/.bin

PATH="$USR:$MYCMD:$PATH"

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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

precmd() {
    __git_ps1 %n@${ARCH}$%~ '%# ' ' (%s)'
}
