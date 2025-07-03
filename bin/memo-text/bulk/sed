# sed replacement
## git 管理のリポジトリでsed置換
$ git grep -l 'foo' | xargs sed -i '' -e 's/foo/bar/g'
- git grep に-lを付けると、ファイル名だけを表示できる
- Macのsedで上書き保存するには-i ''と指定する
    1. MacのsedはGNU版ではなくBSD版である
    2. BSD版のsedではバックアップ用の拡張子を指定する必要がある
    3. 拡張子を指定しなかった場合は、バックアップされない
    4. したがって、-i ''と指定すれば、上書きができる

## ls を使用してsed置換
$ ls | xargs sed -i '' s/foo/bar/g
- lsでフォルダを除外して、ファイル名だけを表示するには
$ ls -p | grep -v /
- lsにpオプションを付けると、フォルダ名を表示するときにスラッシュが末尾に付く
- `grep -v /`でスラッシュが付いている名前を除外する
