# sed
option

p: sedで変換される前の文字列も表示する
* ファイル名の一括変換で使う
example:
```
ls | sed "p;s/test/aaa-test/" | xargs -n 2 mv
```

-i: 拡張子を指定して上書き(BSD version) -> macのsedはBSD
    -> 空の文字列を指定すればバックアップなしの上書きになる
    上書き(GNU version)

example:
```
sed -i '' 's/aaa/bbb/g'
```
