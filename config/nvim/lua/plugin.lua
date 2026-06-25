-- Manage plugin with vim/jetpack
vim.cmd("packadd vim-jetpack")
require("jetpack.packer").startup(function(use)
  use { "tani/vim-jetpack", opt = true } -- bootstrap
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
  use "lepture/vim-jinja"
  -- use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
  use { "neoclide/coc.nvim", branch = "release" }
end)

-- Filer
vim.keymap.set("n", "<Leader>y", ":Ex<CR>", { silent = true })
vim.keymap.set("n", "<Leader>u", ":NERDTreeToggle<CR>", { silent = true })

-- Fzf
vim.opt.rtp:append("~/.fzf")

