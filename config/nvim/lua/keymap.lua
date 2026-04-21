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
vim.keymap.set("i", "<<", "<><ESC>i")
vim.keymap.set("i", '""', '""<LEFT>')
vim.keymap.set("i", "''", "''<LEFT>")
vim.keymap.set("i", "``", "``<LEFT>")

-- Ruby
vim.api.nvim_create_augroup("filetype_ruby", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  group = "filetype_ruby",
  pattern = "ruby",
  callback = function()
    -- ブロックパラメーターのために使う
    vim.keymap.set("i", "||", "||<Left>", { buffer = true })
  end,
})

-- コマンドラインモード
-- Emacs風
-- <C-e>はVim, Emacsで共通
-- コマンドラインモードのデフォルトのキーバインドでは、
-- <C-b>が行頭に戻るキーになっているがEmacs風にするため<C-a>で上書きする
vim.keymap.set("c", "<C-a>", "<C-b>")
vim.keymap.set("c", "<C-b>", "<Left>")
vim.keymap.set("c", "<C-f>", "<Right>")
