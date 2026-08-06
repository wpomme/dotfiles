## maintenance: dotfilesのメンテナンス用のスクリプトやワンライナー

### ~/.config/nvim/ の差分比較
```bash
## できればlsの方を使うこと
diff --color <(ls config/) <(ls ~/.config/)
diff --color <(ls config/nvim/) <(ls ~/.config/nvim/)

## find版
diff --color <(find config/nvim/ -type f -exec basename {} \;) <(find ~/.config/nvim/ -type f -exec basename {} \;)
```

### (WIP)localの付くファイルを.gitignoreに追加する
```bash
find . -type f -name "*local*"
## > ./mise.local.toml
## > ./main/zprofile.local
```
