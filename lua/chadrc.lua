-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}
M.mason = {
  pkgs = {
    "black",
    "debugpy",
    "mypy",
    "isort",
    "ruff-lsp",
    "pyright",
    "typescript-language-server",
    "gopls",
  },
}

M.base46 = {
  theme = "rxyhn",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.ui = {
  statusline = {
    enabled = true,
    theme = "default", -- default/vscode/vscode_colored/minimal
    separator_style = "default",
    order = { "mode", "file", "git", "space", "obsession", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor" },
    modules = {
      obsession = "%{ObsessionStatus('', '')}",
      space = " ",
    },
  },
}

return M
