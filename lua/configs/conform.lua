local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    python = { "black", "isort" },
    sql = { "sql-language-server" },
    go = { "gofumpt", "goimports_reviser", "golines" },
    arduino = { "clang-format" },
    sql = {"sql_formatter`"},
  },

  --
  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 3000,
  --   lsp_fallback = true,
  -- },
  formatters = {
    black = {
      prepend_args = { "--fast" },
      timeout_ms = 6000,
    },
  },
}

return options
