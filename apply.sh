#!/usr/bin/env bash

# neovim
[ -d ~/.config/nvim/lua/ ] || mkdir -p ~/.config/nvim/lua/

cp config/nvim/init.lua ~/.config/nvim/
cp config/nvim/coc-settings.json ~/.config/nvim/
cp config/nvim/lua/*.lua ~/.config/nvim/lua/

# ghostty
[ -d ~/.config/ghostty/ ] || mkdir -p ~/.config/ghostty/
cp config/ghostty/config ~/.config/ghostty/

# tig, tmux
cp main/tigrc ~/.tigrc
cp main/tmuxconf ~/.tmux.conf

# git-prompt, aliases, zprofile
cp main/git-prompt.sh ~/.git-prompt.sh
cp main/aliases ~/.aliases
cp main/zprofile ~/.zprofile

# bin/
[ -d ~/.bin ] || mkdir ~/.bin
find bin -perm -a+x -type f -exec cp {} ~/.bin \;
