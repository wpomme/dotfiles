local parsers = { "javascript", "typescript", "tsx", "jsx", "html", "css" }

require("nvim-treesitter").install(parsers)

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "javascript", "typescript", "typescriptreact", "javascriptreact", "html", "css" },
  callback = function()
    pcall(vim.treesitter.start)
  end,
})
