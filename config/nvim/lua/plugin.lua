-- Manage plugin with vim/jetpack
vim.cmd("packadd vim-jetpack")
require("jetpack.packer").startup(function(use)
  use { "tani/vim-jetpack", opt = true } -- bootstrap
  -- use "dense-analysis/ale"
  use "junegunn/fzf.vim"
  use { "junegunn/fzf", run = function() vim.fn["fzf#install"]() end }
  use "lambdalisue/fern.vim"       -- Filer
  use "lambdalisue/fern-git-status.vim"
  use "vim-airline/vim-airline"
  use "vim-airline/vim-airline-themes"
  use "scrooloose/nerdtree"
  use "tpope/vim-surround"
  use "tpope/vim-endwise"
  use "tpope/vim-fugitive"
  use "airblade/vim-gitgutter"
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
  use { "neoclide/coc.nvim", branch = "release" }
  -- use { "vlime/vlime", rtp = "vim" }
  -- use { "dracula/vim", as = "dracula" }
  -- use { "tpope/vim-fireplace", ft = "clojure" }
end)

-- Filer
-- vim.keymap.set("n", "<Leader>u", ":Fern . -reveal=% -drawer -toggle -width=40<CR>", { silent = true })
vim.keymap.set("n", "<Leader>y", ":Ex<CR>", { silent = true })
vim.keymap.set("n", "<Leader>u", ":NERDTreeToggle<CR>", { silent = true })

-- Fzf
vim.opt.rtp:append("~/.fzf")

-- Coc.nvim
-- GoTo code navigation
vim.keymap.set("n", "gd", "<Plug>(coc-definition)", { silent = true })
vim.keymap.set("n", "gy", "<Plug>(coc-type-definition)", { silent = true })
vim.keymap.set("n", "gi", "<Plug>(coc-implementation)", { silent = true })
vim.keymap.set("n", "gr", "<Plug>(coc-references)", { silent = true })

-- 画面下部のステータスラインにcocの状態を表示する
vim.opt.statusline:prepend("%{coc#status()}")

-- テキストの上でKをクリックすると、そのテキストの説明がポップアップで表示される
-- Use K to show documentation in preview window
vim.keymap.set("n", "K", function()
  if vim.fn.CocAction("hasProvider", "hover") then
    vim.fn.CocActionAsync("doHover")
  else
    vim.api.nvim_feedkeys("K", "in", false)
  end
end, { silent = true })
