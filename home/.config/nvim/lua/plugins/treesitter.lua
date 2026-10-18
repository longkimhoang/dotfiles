return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  main = "nvim-treesitter.configs",
  opts = {
    ensure_installed = { "lua", "vim", "vimdoc", "bash", "json", "markdown" },
    highlight = { enable = true },
    indent = { enable = true },
  },
}
