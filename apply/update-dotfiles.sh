#!/usr/bin/env bash
#これもmainディレクトリ以外でも使えるようにしたが、現状mainディレクトリ専用

if [ "$#" -ne 1 ]; then
  echo "The number of arguments must be one."
  exit 1
fi

DOTFILES_DIR=$1
# dotfiles以下のファイルの先頭にドットを付けて、$HOMEディレクトリ以下にコピーする
for DOTFILES in `find $DOTFILES_DIR -type f | xargs -I{} basename {}`; do
  cp $DOTFILES_DIR/$DOTFILES ~/.$DOTFILES
  ## [ -n `diff -q $DOTFILES_DIR/$DOTFILES ~/.$DOTFILES` ] && cp $DOTFILES_DIR/$DOTFILES ~/.$DOTFILES
done
