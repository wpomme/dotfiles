vim.pack.add({
  {
    src = 'https://github.com/nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate'
  },
  {
    src = 'https://github.com/neoclide/coc.nvim',
    branch = 'release'
  },
  'https://github.com/junegunn/fzf',
  'https://github.com/junegunn/fzf.vim',
  'https://github.com/tpope/vim-surround',
  'https://github.com/tpope/vim-endwise',
  'https://github.com/tpope/vim-fugitive',
  'https://github.com/airblade/vim-gitgutter',
  'https://github.com/vim-airline/vim-airline',
  'https://github.com/neovim/nvim-lspconfig',
  {
    src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
    version = vim.version.range('3')
  },
  -- dependencies
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/MunifTanjim/nui.nvim",
  -- optional, but recommended
  "https://github.com/nvim-tree/nvim-web-devicons",
})

require('neo-tree').setup({
  -- options go here
})

-- Filer
vim.keymap.set("n", "<Leader>y", ":Ex<CR>", { silent = true })
vim.keymap.set("n", "<Leader>u", "<Cmd>Neotree<CR>", { silent = true })

-- Fzf
vim.opt.rtp:append("~/.fzf")

--- coc.nvim
--- GoTo code navigation
vim.keymap.set("n", "gd", "<Plug>(coc-definition)", { silent = true })
vim.keymap.set("n", "gy", "<Plug>(coc-type-definition)", { silent = true })
vim.keymap.set("n", "gi", "<Plug>(coc-implementation)", { silent = true })
vim.keymap.set("n", "gr", "<Plug>(coc-references)", { silent = true })

--- Add `:Format` command to format current buffer
vim.api.nvim_create_user_command('Format', "call CocAction('format')", {})

--- 画面下部のステータスラインにcocの状態を表示する
vim.opt.statusline:prepend("%{coc#status()}")

--- テキストの上でKをクリックすると、そのテキストの説明がポップアップで表示される
--- Use K to show documentation in preview window
vim.keymap.set("n", "K", function()
  if vim.fn.CocAction("hasProvider", "hover") then
    vim.fn.CocActionAsync("doHover")
  else
    vim.api.nvim_feedkeys("K", "in", false)
  end
end, { silent = true })
