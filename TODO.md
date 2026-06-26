# TODO
- comment-out.lua を完成させる
    - `n comment-out.lua`で編集して、`n -u comment-out.lua <react.jsx>` で確認するのがいい
- mise でdotfile の管理ができる
    - https://mise.jdx.dev/dotfiles.html
- dotfilesを適用した環境によって、さらに独自に設定できるようにする
    - mise.toml の運用も~/mise.local.toml があれば良さそう
- aliasesを消していきたい
    - zsh-autosuggestions を使えば消せるはず
        - それに従って、自動補完のタブ補完を有効にする
- neovimのファイル更新やlinterのキャッシュ更新などを覚える
- neovim のフォルダサイドバー問題
    - 代替になるプラグインはないだろうか
        - この機能が便利で他に移行できない...。
    - neovimのnerd-treeのサイドバーを簡単に広げられるようにしたい
- vimのkeymapをデフォルトに近づけたい
    - vim.keymap.set("i", "jk", "<ESC>") とかを辞めたい
- apply.shの修正
    - 次の二つの動作をMakefileも適用し、関数化する
    1. フォルダがなければ作成
    2. ファイルの更新があれば更新
        a. 元のファイルがない場合?
- zprofile.local, zshrc.localの確認や表示、編集を行うコマンドが欲しい
- git-prompt.sh をzsh に特化したものに変える 
- CLI でリポジトリの関数について、その定義元を検索するコマンド
    - git grep で関数を検索するとき、大体その定義元のファイル名が見たかったりするので
    - 最も、neovim でも同様のことができるのだけれど...
- ブックレットの作成
    - そのページのtitleとURLを取得してリンクとして貼り付けできるもの
