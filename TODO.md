# TODO
- dotfilesを適用した環境によって、さらに独自に設定できるようにする
    - .zprofile.local, .zshrc.localがあれば読み込むようにした
    - mise.toml の運用も~/mise.local.toml があれば良さそう
- aliasesを消していきたい
    - zsh-autosuggestions を使えば消せるはず
        - それに従って、自動補完のタブ補完を有効にする
- neovimのnerd-treeのサイドバーを簡単に広げられるようにしたい
    - この機能が便利で他に移行できない...。
- apply.shの修正
    - 次の二つの動作をMakefileも適用し、関数化する
    1. フォルダがなければ作成
    2. ファイルの更新があれば更新
        a. 元のファイルがない場合?
- zprofile.local, zshrc.localの確認や表示、編集を行うコマンドが欲しい
