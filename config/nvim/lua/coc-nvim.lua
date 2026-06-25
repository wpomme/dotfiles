-- coc.nvim
-- GoTo code navigation
vim.keymap.set("n", "gd", "<Plug>(coc-definition)", { silent = true })
vim.keymap.set("n", "gy", "<Plug>(coc-type-definition)", { silent = true })
vim.keymap.set("n", "gi", "<Plug>(coc-implementation)", { silent = true })
vim.keymap.set("n", "gr", "<Plug>(coc-references)", { silent = true })

-- Add `:Format` command to format current buffer
vim.api.nvim_create_user_command('Format', "call CocAction('format')", {})

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
