-- 言語ごとのプラグイン
return {
  {
    "mfussenegger/nvim-jdtls",
    ft = "java",
    config = function()
      require("lsp.jdtls").setup()
    end,
  },
  {
    "mfussenegger/nvim-lint",
    config = function()
      local lint = require("lint")
      lint.linters.checkstyle = {
        -- brew install の場合
        cmd = "checkstyle",
        args = {
          -- プロジェクトごとに設定するなら: "-c", "checkstyle.xml",
          "-c", vim.fn.expand("~/.config/checkstyle/google_checks.xml"),
        },
        stdin = false,
        stream = "stdout",
        ignore_exitcode = true,
        parser = require("lint.parser").from_pattern(
          "[^:]+:%[(%d+)%]:%[(%d+)%]: (.+) %((.+)%)",
          { "lnum", "col", "message", "code" },
          nil,
          { source = "checkstyle" }
        ),
      }

      lint.linters_by_ft = {
        java = { "checkstyle" },
      }

      vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost" }, {
        callback = function()
          lint.try_lint()
        end,
      })
    end,
  }
}
