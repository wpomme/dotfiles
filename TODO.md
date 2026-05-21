# TODO
- tmuxで複数のセッションを使用して、セッションの切り替えを素早く行う
    - dotfilesやmemoはmainのセッションと別にするなど
    - tmuxのセッションに名前を付けて、tmux list-sessionsで名前をとってfzfに渡す、とかだろうか？
- ghosttyの漢字を日本語っぽく直す
    - 以下を実行
    `brew install --cask font-0xProto-nerd-font`
- dotfilesを適用した先の独自の設定を上手く管理したい
    - 現状、コードを書き換えたままになっている
- aliasesを消していきたい
    - zsh-autosuggestions を使えば消せるはず
        - それに従って、自動補完のタブ補完を有効にする
- neovimのnerd-treeのサイドバーを簡単に広げられるようにしたい
    - この機能が便利で他に移行できない...。
- apply.shの修正
    - 設定ファイルに差分があれば更新とする機能が欲しい
