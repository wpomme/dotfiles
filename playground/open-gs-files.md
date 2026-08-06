## staged filesとUntracked filesの中身を確認したい

```bash
## 変更を加えたstagedファイルの差分をみたい
## 一つ一つのファイルをxargsで渡すならこちら
## neovimのgitのインターフェイスを変えたい
## 追加したところが分かりにくい
git status -s | grep '^M' | awk '{ print $2 }' | xargs -I{} nvim {}

## bufferとして渡すならこちら
nvim $(git status -s | grep '^M' | awk '{ print $2 }')

## Untracked filesの中身を確認したい
## TODO: 本当は'??'にマッチさせたい
## grep '^\?\?'だと全ての行を拾ってしまう
git status -s | grep '^\?' | awk '{ print $2 }' | xargs -I{} bat {}
```
