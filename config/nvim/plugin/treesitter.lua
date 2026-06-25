require'nvim-treesitter.configs'.setup {
  -- Automatically install parsers missing on a file open
  ensure_installed = { "javascript", "typescript", "tsx", "jsx", "html", "css" },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  indent = {
    enable = true
  }
}
