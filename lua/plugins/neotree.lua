return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      mappings = {
        ["<cr>"] = "none", -- Disable the default <cr> mapping
        ["<tab>"] = "open", -- Map <tab> to open files
      },
    },
  },
}
