#!/usr/bin/env bash

CONFIG_DIR="config"
MAIN_DIR="main"

bash apply/update-dotfiles-dir.sh ${CONFIG_DIR}
bash apply/update-dotfiles.sh ${MAIN_DIR}
bash apply/update-bin.sh
