#!/bin/zsh
if [ -f "$HOME/.zprofile.local" ]; then
  echo "already .zprofile.local exists"
  exit 1
fi
touch $HOME/.zprofile.local
exit 0
