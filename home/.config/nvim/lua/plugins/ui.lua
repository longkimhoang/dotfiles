return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = { options = { globalstatus = true } },
  },
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
  },
}
