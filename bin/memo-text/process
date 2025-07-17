# process (mac)
## 実行プロセスの集計
```
$ ps aux | cut -w -f11 | xargs basename | sort | uniq -c | sort -r
```

## basename を使わなくてもcオプションで同じことができる
```
$ ps acux | cut -w -f11 | sort | uniq -c | sort -r
```
