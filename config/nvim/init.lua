require("basic")
require("keymap")
require("config.lazy")
require("plugins.init")

vim.lsp.enable('lua_ls')
vim.lsp.enable('ts_ls')
vim.lsp.enable('astro')
vim.lsp.enable('ruby_lsp')
