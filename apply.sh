#!/usr/bin/env bash

# neovim
[ -d ~/.config/nvim/lua/ ] || mkdir -p ~/.config/nvim/lua/

cp config/nvim/init.lua ~/.config/nvim/
cp config/nvim/coc-settings.json ~/.config/nvim/
cp config/nvim/lua/*.lua ~/.config/nvim/lua/

# ghostty
[ -d ~/.config/ghostty/ ] || mkdir -p ~/.config/ghostty/
cp config/ghostty/config ~/.config/ghostty/

# starship
cp config/starship.toml ~/.config/starship.toml

# mise
# config.tomlはapply.shで作成しない方がいい気がする
# [ -d ~/.config/mise/ ] || mkdir -p ~/.config/mise/
# cp config/mise/config.toml ~/.config/mise/

# tig, tmux
cp main/tigrc ~/.tigrc
cp main/tmuxconf ~/.tmux.conf

# git-prompt, aliases, zprofile
# git-prompt はファイルがなければコピーする
[ -f ~/.git-prompt.sh ] || cp main/git-prompt.sh ~/.git-prompt.sh

# zprofile, zshrc, aliases は差分があれば更新する
[ -n "$(diff -q main/zprofile ~/.zprofile)" ] && cp main/zprofile ~/.zprofile
[ -n "$(diff -q main/zshrc ~/.zshrc)" ] && cp main/zshrc ~/.zshrc
[ -n "$(diff -q main/aliases ~/.aliases)" ] && cp main/aliases ~/.aliases

# bin/
[ -d ~/.bin ] || mkdir ~/.bin
find bin -perm -a+x -type f -exec cp {} ~/.bin \;
