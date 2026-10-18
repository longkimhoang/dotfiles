return {
  {
    "dmtrKovalenko/fff.nvim",
    build = function()
      require("fff.download").download_or_build_binary()
    end,
    lazy = false,
    opts = {},
    keys = {
      { "<leader>ff", function() require("fff").find_files() end, desc = "Find files" },
      { "<leader>fg", function() require("fff").live_grep() end, desc = "Live grep" },
    },
  },
}
