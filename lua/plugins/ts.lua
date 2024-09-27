return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ts_ls = {
          cmd = { "typescript-language-server", "--stdio" },
          filetypes = {
            "javascript",
            "javascriptreact",
            "javascript.jsx",
            "typescript",
            "typescriptreact",
            "typescript.tsx",
            "vue", -- Add this if you want Vue support
          },
          init_options = {
            hostInfo = "neovim",
            plugins = {
              {
                name = "@vue/typescript-plugin",
                location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
                languages = { "javascript", "typescript", "vue" },
              },
            },
          },
          root_dir = require("lspconfig.util").root_pattern("tsconfig.json", "jsconfig.json", "package.json", ".git"),
          single_file_support = true,
        },
      },
    },
  },
}
