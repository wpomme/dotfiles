## command tool
### nkf
* 文字コード判定
`nkf -g <textdata>`
* UTF8へ変換し標準出力へ表示
`nkf -w <textdata>` 
* ファイルへ上書き
`nkf -w --overwrite <textdata>`

### npm
* version 指定
`npm info moment versions`
`npm install moment@2.24.0 --save`

* インストールされたモジュールのリスト
`npm ls --depth 0`
* グローバルモジュールのリスト
`npm ls -g --depth 0`

### homebrew
* Brewfile作成・適用
```
brew bundle dump
brew bundle
```

### say
afplay 音を再生
say 単語を発音

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

### Json to Yaml
```
ruby -ryaml -rjson 
-e 'puts YAML.dump(JSON.parse(STDIN.read))' 
< sample.json 
> sample.yaml
```

### Vim
- "23" -> 23  
`s/^"\(\d*\)"/\1/`
- 行頭に数字を挿入
`%s/^/\=(line('.') - 1) . ','/g`
- 行単位で検索 -> 移動
`t T`検索文字の直前まで移動
`f F`検索文字まで移動

- ビジュアルで単語選択 -> 修正
単語の上で`viw` -> `c`

- ビジュアルモード
`gv`直前の指定範囲を再度指定
`o` ビジュアルモードの始点終点を切り替える
- バッファ削除
`:bdelete <number>`
- 単語の末尾に追記
`ea`
- ; と ,
`;`　直前の検索結果繰り返す `,` 逆方向に繰り返す
- カットと削除
`d{motion}` and `_d{motion}`
- 無名レジスタ　有名レジスタ
`""p` `"ap`
- ヤンクレジスタ
呼び出し`"0p`
- クリップボード
`"+`
- 単語コピー　→　置き換え
ヤンク　→　置き換える単語`v`で選択　→ `p`
- paste toggle
`:set pastetoggle=<f5>`
- クリップボードへコピー(mac)
範囲選択→`!pbcopy;pbpaste`
- 空行削除
`:v/./d`
- ウィンドウ移動
`^w + w`

### Vimium
タブ作成
`t`
タブ移動
`tab + j, k`
※ブラウザのタブ移動
`tab + ctrl`

### Emacs
C + o -> make new line  
C + k -> delete one line  (delete following line)
C + u -> delete previous line
C + w -> delete a word
C + h -> delete one character
Alt + arrows -> moving per word  

### oneliner (experimental)
`ps | grep -v grep | grep `tty | sed -e s#/dev/##g` | awk '{print $1}' | xargs kill -9`
