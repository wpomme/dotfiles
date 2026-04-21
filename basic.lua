-- Basic
-- 使わない機能を無効にする
-- バックアップファイルの出力を無効にする
vim.opt.backup = false
-- swpファイルの出力を無効にする
vim.opt.swapfile = false

-- Leader
vim.g.mapleader = " "

-- Interface
-- 行番号を表示
vim.opt.number = true
-- ヤンクした文字列をクリップボードにコピー
vim.opt.clipboard = "unnamed"
-- 現在の行を強調表示
vim.opt.cursorline = true
-- 入力したコマンドを画面右下に表示する
vim.opt.showmatch = true
-- ビープ音を可視化
vim.opt.visualbell = true
-- 24bitカラーを有効化（カラースキームが正しく表示される）
vim.opt.termguicolors = true
-- 左端のサイン列を常時表示（coc.nvimのエラーアイコン等がガタつかない）
vim.opt.signcolumn = "yes"
-- カーソルが画面端に近づいたとき余白を保って自動スクロール
vim.opt.scrolloff = 8
-- 長い行を折り返さない
vim.opt.wrap = false

-- encoding
vim.opt.fileencodings = { "utf-8", "euc-jp", "sjis", "iso-2022-jp" }
vim.opt.fileformats = { "unix", "dos", "mac" }

-- tab
-- タブ入力を空白に変換
vim.opt.expandtab = true
-- タブを何文字の空白に変換するか
vim.opt.tabstop = 4
-- 自動インデント時に入力する空白の数
vim.opt.shiftwidth = 4

-- search
-- 大文字小文字を区別しないで検索する
vim.opt.ignorecase = true
-- 大文字が含まれている場合は"ignorecase"を上書きする
vim.opt.smartcase = true
-- :grepの実行エンジンをripgrepに変更
vim.opt.grepprg = "rg --vimgrep"

-- edit
-- アンドゥ履歴をファイルに永続化（再起動後もundoできる）
vim.opt.undofile = true
-- デフォルト4000ms→300ms（coc.nvimのレスポンスが速くなる）
vim.opt.updatetime = 300

-- split
-- :vsplitで右側に開く
vim.opt.splitright = true
-- :splitで下側に開く
vim.opt.splitbelow = true

-- netrw
-- set default view to tree view
vim.g.netrw_liststyle = 3

