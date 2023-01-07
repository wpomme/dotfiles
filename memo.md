## command tool
## command interface tool
### tmux
* detach
`prefix + d`
* next window
`prefix + n`
* previous window
`prefix + p`

## Tips
### Webserver
`python3 -m http.server 8000`

### Vim
- バッファ削除
`:bdelete <number>`
- ; と ,
`;`　直前の検索結果繰り返す `,` 逆方向に繰り返す
- カットと削除
`d{motion}` and `_d{motion}`
- 無名レジスタ　有名レジスタ
`""p` `"ap`
- ヤンクレジスタ
呼び出し`"0p`
- 単語コピー　→　置き換え
ヤンク　→　置き換える単語`v`で選択　→ `p`
- paste toggle
`:set pastetoggle=<f5>`
- ウィンドウ移動
`^w + w`

### Emacs
C + o -> make new line  
C + k -> delete one line  (delete following line)
C + u -> delete previous line
C + w -> delete a word
C + h -> delete one character
Alt + arrows -> moving per word  

## ssh
ssh <login name>@<address>

# プロセス管理
## ps
a - 端末のあるプロセス表示
u - 実行ユーザー名表示
x - 端末のないプロセス表示
e - 環境変数を表示

## grep
options
-r -> `grep -r <pattern> <dif>` -> Recursively files search
-n case-insensitive 
--exclude-dir
--exclude

example:
```
grep -rn Event . --exclude-dir=node_modules --exclude-dir=assets --exclude="*.min.*" | less
grep -rn RECEIVE_EVENTS . --exclude-dir=node_modules --exclude-dir=assets --exclude-dir=public
```

## docker
`docker exec -it `dps -q` /bin/bash`
docker exec -it `dps -q | awk 'NR==1{ print $1 }'` /bin/bash

# git
# 初期設定
## gitのアカウント情報などの確認
git config -l

### ローカルのgitアカウント作成
git config --local user.name "wpomme"
git config --local user.email "<email>"

## テキストエディタをVimにする
git config --global core.editor 'vim -c "set fenc=utf-8"'

## git squash
git merge --squash origin/feature/xxx
