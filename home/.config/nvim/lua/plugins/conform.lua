local oxfmt_filetypes = {
  "javascript",
  "javascriptreact",
  "typescript",
  "typescriptreact",
  "vue",
  "json",
  "jsonc",
  "json5",
  "yaml",
  "toml",
  "html",
  "css",
  "scss",
  "less",
  "markdown",
  "mdx",
  "graphql",
  "handlebars",
}

local formatters_by_ft = { lua = { "stylua" } }
for _, ft in ipairs(oxfmt_filetypes) do
  formatters_by_ft[ft] = { "oxfmt" }
end

return {
  "stevearc/conform.nvim",
  event = "BufWritePre",
  cmd = "ConformInfo",
  init = function()
    vim.filetype.add({ extension = { mdx = "mdx" } })
  end,
  keys = {
    {
      "<leader>cf",
      function()
        require("conform").format({ async = true, lsp_format = "fallback" })
      end,
      mode = { "n", "v" },
      desc = "Format buffer",
    },
  },
  opts = function()
    return {
      formatters_by_ft = formatters_by_ft,
      formatters = {
        oxfmt = {
          command = require("conform.util").from_node_modules("oxfmt"),
          args = { "--stdin-filepath", "$FILENAME" },
          stdin = true,
        },
      },
      format_on_save = {
        timeout_ms = 1000,
        lsp_format = "fallback",
      },
    }
  end,
}
