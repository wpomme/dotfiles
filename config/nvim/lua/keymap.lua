-- Key Mapping
-- ノーマルモード
-- 文字列が折り返されていても一行ずつ移動
vim.keymap.set({ "n", "v" }, "j", "gj")
vim.keymap.set({ "n", "v" }, "k", "gk")
-- "H", "L"で行頭・行末に移動
vim.keymap.set({ "n", "v" }, "H", "^")
vim.keymap.set({ "n", "v" }, "L", "$")
-- ESC連打でハイライト解除
vim.keymap.set("n", "<Esc><Esc>", ":nohlsearch<CR><Esc>")
vim.keymap.set("n", "<C-]>", "g<C-]>")
-- <C-G>を二回打つとクリップボードにファイルパスを保存する
vim.keymap.set("n", "<C-G><C-G>", "<C-G><Cmd>let @+ = expand('%')<CR>")

-- 挿入モード
vim.keymap.set("i", "<C-]>", "<ESC>g<C-]>")
-- jk同時押しで挿入モードを抜ける
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("i", "kj", "<ESC>")
-- Emacs風
vim.keymap.set("i", "<C-b>", "<Left>")
vim.keymap.set("i", "<C-f>", "<Right>")
-- Parenthesis 補完
vim.keymap.set("i", "{{", "{}<Left>")
vim.keymap.set("i", "{<Enter>", "{}<Left><CR><ESC><S-o>")
vim.keymap.set("i", "((", "()<ESC>i")
vim.keymap.set("i", "(<Enter>", "()<Left><CR><ESC><S-o>")
vim.keymap.set("i", "[[", "[]<ESC>i")
vim.keymap.set("i", "[<Enter>", "[]<Left><CR><ESC><S-o>")
-- TODO: .rb では無効にしたい
vim.keymap.set("i", "<<", "<><ESC>i")
vim.keymap.set("i", '""', '""<Left>')
vim.keymap.set("i", "''", "''<Left>")
-- TODO: .md では遅延してから読み込むようにできないか
vim.keymap.set("i", "``", "``<Left>")

-- コマンドラインモード
-- Emacs風
-- <C-e>はVim, Emacsで共通
-- コマンドラインモードのデフォルトのキーバインドでは、
-- <C-b>が行頭に戻るキーになっているがEmacs風にするため<C-a>で上書きする
vim.keymap.set("c", "<C-a>", "<C-b>")
vim.keymap.set("c", "<C-b>", "<Left>")
vim.keymap.set("c", "<C-f>", "<Right>")
