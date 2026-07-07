# dotfiles
- デプロイ
```bash
make

## localの付くファイルは.gitignoreに追加しておく
find . -type f -name "*local*"
## > ./mise.local.toml
## > ./main/zprofile.local


# 端末ごとに独自の設定をしたい場合
#     - .zprofile.local, .zshrc.local を作成し、そこに設定を記載すること
```

## lua
`.luarc.json`: -> 'vim' が未定義の変数であるという表示を出さなくする
