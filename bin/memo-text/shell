# shell

## 条件付きリスト(conditional list)
## &&演算子
## cd dir が成功した場合にのみ、touch new.txt を実行
$ cd dir && touch new.txt

## ||演算子
## cd dir が失敗した場合、エラーコード1 で終了する
$ cd dir || exit 1

## 終了コード
## $? で確認できる。0 なら成功、1 なら失敗
$ echo $?

## プロセス置換
## 構文は <(any command here)
## any command here の実行結果を、ファイルのように扱うことができる
## diff などの、引数としてファイルを要求するコマンドに使用する
## 補足
## プロセス置換は、実行されたコマンドの出力をファイル記述子と関連づける
## echo を使うと関連づけられたファイル記述子の番号が確認できる
$ echo <(ls)
