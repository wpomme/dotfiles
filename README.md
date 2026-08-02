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

## 作成中
- Makefileを更新中
- main/Makefileは作成した
```bash
cd main/

## ドットファイルをコピー
make

## $HOMEの配下にある対象のドットファイルを削除
make clean
```

## lua
`.luarc.json`: -> 'vim' が未定義の変数であるという表示を出さなくする
