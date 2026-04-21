#!/usr/bin/env bash

[ -d ~/.config/nvim/lua/ ] || mkdir -p ~/.config/nvim/lua/

function cp_nvim_files() {
    cp ./config/nvim/init.lua ~/.config/nvim/
    cp ./config/nvim/coc-settings.json ~/.config/nvim/
    cp ./config/nvim/lua/*.lua ~/.config/nvim/lua/
}

if [ -d ~/.config/nvim/lua/ ];then
    cp_nvim_files
else
    mkdir -p ~/.config/nvim/lua/
    cp_nvim_files
fi

if [ -d ~/.config/ghostty/ ];then
    cp ./config/ghostty/config ~/.config/ghostty/config
else
    mkdir ~/.config/ghostty/
    cp ./config/ghostty/config ~/.config/ghostty/config
fi
