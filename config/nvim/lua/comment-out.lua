-- WIP: TODO gc コマンドを上書きしてJSX, TSX をコメントアウトするように設定する
-- コメントに関するドキュメントは:h commenting で確認すること
-- 一行のコメントアウト
-- 複数行のコメントアウト
-- visual 選択のコメントアウト、を順に作成する
vim.api.nvim_create_user_command(
  'Comment',
  function()
    local left_comment_out = '{/* '
    local right_comment_out = ' */}'
    local cur_str = vim.fn.getline('.')
    vim.fn.setline(vim.fn.line('.'), left_comment_out .. cur_str .. right_comment_out)
  end,
  {
    desc = "Insert JSX Comment out strings into next line"
  }
)

vim.api.nvim_create_augroup("JSXGroup", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = "JSXGroup",
  pattern = { "javascriptreact", "typescriptreact" },
  callback = function()
    -- 一旦、ノーマルモードでccc で実行する
    vim.keymap.set("n", "ccc", function()
      vim.cmd('Comment')
    end
    )
  end,
})
