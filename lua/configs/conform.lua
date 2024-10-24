local options = {
  formatters_by_ft = {
    lua = {
      formatters = "stylua",
    },

    css = { "prettier" },
    html = { "prettier" },

    python = {
      formatters = { "black", "isort" },
    },
    go = { "gofumpt", "goimports_reviser", "golines" },
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
    },
  },
}

return options
