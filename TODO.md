# TODO
    - * 個人的なTODO ばかり...
- comment-out.lua を完成させる
    - `n comment-out.lua`で編集して、`n -u comment-out.lua <react.jsx>` で確認するのがいい
    - プラグインでいいかも...
- keymap
    - それぞれのkeymapにdescを記入する
    - vimのkeymapをデフォルトに近づけたい
        - vim.keymap.set("i", "jk", "<ESC>") とかを辞めたい

- nvim-surround
    - ysやdsの後に行頭・行末に移動するとき、H, Lを使えるようにする
- 現在のブランチを補完かコマンドで簡単に出せるようにする

- mise でdotfile の管理ができるらしい
    - https://mise.jdx.dev/dotfiles.html
- dotfilesを適用した環境によって、さらに独自に設定できるようにする
    - zprofile.localの対応。
    - mise.toml の運用も~/mise.local.toml があれば良さそう
- aliasesを消していきたい
    - zsh-autosuggestions を使えば消せるはず
        - それに従って、自動補完のタブ補完を有効にする
- コマンド履歴
    - fcfで選択したコマンドを実行できるようにする。zshに渡せばOKだけど
- neo-tree 導入 -> git status, git add はneovim 上でできるようにしたい
    - できればgit staged にあるファイルのgit diff もほしい
    - コマンド履歴の集計を見て、コマンドの回数が多かったものをneovim上でできるようにする
- neovimのファイル更新やlinterのキャッシュ更新などを覚える
- zprofile.local, zshrc.localの確認や表示、編集を行うコマンドが欲しい
- git-prompt.sh をzsh に特化したものに変える 
- ブックレットの作成
    - そのページのtitleとURLを取得してリンクとして貼り付けできるもの
- 言語ごとに必要なファイルをdotfilesに作成しておく
    - Ruby: .rubocop.yml, .solargraph.yml をdotfiles に作成

# 各レポジトリのフォルダ構成
$HOME
- dotfiles
+ .config
    + ghostty
    + mise
    + nvim
    - starship.toml
+ repo
    - memo-cli
    - memorandum
    - exercise
    - lang
        - exerciseに移行する
        - gitlab で管理する
    - my-records-for-sale
    - mysql-dev-container
    - rekordbox-utils
+ warehouse
    - archives
    - books
    - packages
