## maintenance: dotfilesのメンテナンス用のスクリプトやワンライナー

### ~/.config/nvim/ の差分比較
```bash
diff --color <(find config/nvim/ -type f -exec basename {} \;) <(find ~/.config/nvim/ -type f -exec basename {} \;)
```
