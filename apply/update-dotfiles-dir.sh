#!/usr/bin/env bash
# configフォルダ以外でも使えるように作成したが、現状はconfigフォルダ専用

if [ "$#" -ne 1 ]; then
  echo "The number of arguments must be one."
  exit 1
fi

# ~/以下に引数で指定したディレクトリがなければ再帰的に作成する。
DOTFILES_DIR=$1
for DOT_CONFIG_DIR in $(find $DOTFILES_DIR -type d | xargs -I{} echo "$HOME/.{}/"); do
  test -d $DOT_CONFIG_DIR || mkdir -p $DOT_CONFIG_DIR
done

# ~/以下に引数で指定したディレクトリの中にあるファイルを全てコピーする
find $DOTFILES_DIR -type f | xargs -I{} cp {} $HOME/.{}

# .config/nvim/に入っている知らないファイルを消すのに使えるかも
# find $DOTFILES_DIR -type f | xargs -I{} touch $HOME/.{}
