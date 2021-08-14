# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi

    if [ -f "$HOME/.aliases" ]; then
	. "$HOME/.aliases"
    fi
fi

export NODE_V=12.9.1
export USR=/usr/local

export USRPATH=$USR/bin
export JSPATH=$HOME/.nodebrew/node/v$NODE_V/bin
export RUSTPATH=$HOME/.cargo/bin

source ~/.git-prompt.sh
PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'


PATH="$USRPATH:$HOME/.bin:$HOME/.local:$GOPATH:$JSPATH:$RUSTPATH:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
