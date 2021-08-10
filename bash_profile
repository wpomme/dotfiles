# load aliases
if [ -f "$HOME/.aliases" ]; then
. "$HOME/.aliases"
fi

export NODE_V=12.9.1
export USR=/usr/local

export USRPATH=$USR/bin
export JSPATH=$HOME/.nodebrew/node/v$NODE_V/bin
export RUSTPATH=$HOME/.cargo/bin

source ~/.git-prompt.sh
PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'


PATH="$USRPATH:$HOME/.bin:$HOME/.local:$GOPATH:$JSPATH:$RUSTPATH:$PATH"
