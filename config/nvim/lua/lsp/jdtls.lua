local M = {}

function M.setup()
  local jdtls = require("jdtls")
  local mason_path = vim.fn.expand("~/.local/share/nvim/mason/packages/jdtls")

  -- プロジェクトルートをワークスペース名に使う
  local root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" })
  local project_name = vim.fn.fnamemodify(root_dir, ":p:h:t")
  local workspace_dir = vim.fn.expand("~/.cache/jdtls/workspace/") .. project_name

  local config = {
    cmd = {
      "java",
      "-Declipse.application=org.eclipse.jdt.ls.core.id1",
      "-Dosgi.bundles.defaultStartLevel=4",
      "-Declipse.product=org.eclipse.jdt.ls.core.product",
      "-Dlog.protocol=true",
      "-Dlog.level=ALL",
      "-Xmx1g",
      "--add-modules=ALL-SYSTEM",
      "--add-opens", "java.base/java.util=ALL-UNNAMED",
      "--add-opens", "java.base/java.lang=ALL-UNNAMED",
      "-jar", vim.fn.glob(mason_path .. "/plugins/org.eclipse.equinox.launcher_*.jar"),
      "-configuration", mason_path .. "/config_mac_arm",
      "-data", workspace_dir,
    },
    root_dir = root_dir,
    settings = {
      java = {
        eclipse = { downloadSources = true },
        maven = { downloadSources = true },
        implementationsCodeLens = { enabled = true },
        referencesCodeLens = { enabled = true },
        format = { enabled = true },
        signatureHelp = { enabled = true },
        completion = {
          favoriteStaticMembers = {
            "org.junit.Assert.*",
            "org.junit.Assume.*",
            "org.junit.jupiter.api.Assertions.*",
            "org.junit.jupiter.api.Assumptions.*",
          },
        },
      },
    },
    init_options = {
      bundles = {},
    },
  }

  vim.api.nvim_create_autocmd("FileType", {
    pattern = "java",
    callback = function()
      jdtls.start_or_attach(config)
    end,
  })
end

return M
