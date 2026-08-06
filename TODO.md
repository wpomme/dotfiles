# TODO
## ターミナル
- 現在のブランチを補完かコマンドで簡単に出せるようにする

## dotifiles
- aliasesを消していきたい
    - zsh-autosuggestionsを使えば消せるはず
        - それに従って、自動補完のタブ補完を有効にする

## neovim
- lazy.vimとtree-sitterを導入した
    - :checkhealthで足りないものを補完していけば良さそう
        - lsp-configやmason.nvimを入れた
            - さらに:checkhealthでチェックしていくこと
    - 各プラグインの設定を確認すること

- keymap
    - それぞれのkeymapにdescを記入する
    - vimのkeymapをデフォルトに近づけたい
        - vim.keymap.set("i", "jk", "<ESC>") とかを辞めたい

- nvim-surround
    - ysやdsの後に行頭・行末に移動するとき、H, Lを使えるようにする

- git status, git add, git restoreをneovim上で行えるようにする
    - その他、git diffを見やすくするツールも欲しい
