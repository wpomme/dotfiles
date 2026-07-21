vim.pack.add({
  {
    src = 'https://github.com/neoclide/coc.nvim',
    branch = 'release'
  },
  {
    src = "https://github.com/kylechui/nvim-surround",
    version = vim.version.range("4.x"),
  },
  {
    src = 'https://github.com/romgrk/barbar.nvim',
  },
  -- dependencies for barbar.nvim
  'https://github.com/lewis6991/gitsigns.nvim',
  --  duplicate neo-tree dependencies
  -- 'https://github.com/nvim-tree/nvim-web-devicons',
  -- fzf
  'https://github.com/junegunn/fzf',
  'https://github.com/junegunn/fzf.vim',
  'https://github.com/tpope/vim-endwise',
  'https://github.com/tpope/vim-fugitive',
  'https://github.com/airblade/vim-gitgutter',
  'https://github.com/nvim-lualine/lualine.nvim',
  -- 'https://github.com/vim-airline/vim-airline',
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

-- Filer
vim.keymap.set("n", "<Leader>y", ":Ex<CR>", { silent = true })
vim.keymap.set("n", "<Leader>u", "<Cmd>Neotree toggle<CR>", { silent = true })

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

-- 変数名や関数名をリネーム
vim.keymap.set("n", "<leader>rn", "<Plug>(coc-rename)", {silent = true})
