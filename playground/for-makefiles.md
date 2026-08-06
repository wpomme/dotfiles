## For Makefiles: Makefilesの改良など
- dotfilesから削除したファイルをどう扱うか
    - dotfilesから削除したファイル・フォルダが分かるようにdiffを取って、手動で削除するのが一番確実そう
    - それとは別にmake cleanを別途設定しておく。
- miseの場合、.configの更新をdotfilesの方に取り込むようにしたい
