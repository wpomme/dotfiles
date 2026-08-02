# TODO
- 必要なパッケージを洗い出しておく
    - zshがmac専用になってる
    - homebrew(mac)
    - mise
    - zoxide
    - fzf
```bash
## こんな感じのものを作成しておく
if command -v mise &>/dev/null; then
    eval "$(mise activate zsh)"
else
    echo "miseがインストールされていません。"
fi
```

- comment-out.lua を完成させる
    - `n comment-out.lua`で編集して、`n -u comment-out.lua <react.jsx>` で確認するのがいい
    - プラグインでいいかも...
- keymap
    - それぞれのkeymapにdescを記入する
    - vimのkeymapをデフォルトに近づけたい
        - vim.keymap.set("i", "jk", "<ESC>") とかを辞めたい

- vimのtext objectsをしっかり覚えたい
- nvim-surround
    - ysやdsの後に行頭・行末に移動するとき、H, Lを使えるようにする
- 現在のブランチを補完かコマンドで簡単に出せるようにする

- dotfilesを適用した環境によって、さらに独自に設定できるようにする
    - zprofile.localの対応。
    - mise.toml の運用も~/mise.local.toml があれば良さそう
        - miseの場合、.configの更新をdotfilesの方に取り込むようにしたい
        - Makefileを使用したい
- aliasesを消していきたい
    - zsh-autosuggestions を使えば消せるはず
        - それに従って、自動補完のタブ補完を有効にする

- barbar.nvim
    - bufferが上の方に出てくるのが便利
    - BufferPreviousなどKeymapを入れておく
        - :bnで間に合う気がする
- neo-tree 導入 -> git status, git add はneovim 上でできるようにしたい
    - tree-sitterの再導入を検討
    - できればgit staged にあるファイルのgit diff もほしい
    - コマンド履歴の集計を見て、コマンドの回数が多かったものをneovim上でできるようにする
    -> git add, git status, git restoreがneovim上で出来るとコマンド履歴が変わるはず
    - その他、git diffを見やすくするツールがほしい。これはターミナル上でもいい
    - また、ターミナル上でgit status上のファイルの差分が見れるコマンドなど


- neovimのファイル更新やlinterのキャッシュ更新などを覚える
- zprofile.local, zshrc.localの確認や表示、編集を行うコマンドが欲しい
- git-prompt.sh をzsh に特化したものに変える 
- ブックレットの作成
    - そのページのtitleとURLを取得してリンクとして貼り付けできるもの
- .editorconfig, .rubocop.yml, .solargraph.ymlなどを保存する場所
    - template/が良いだろうか？
