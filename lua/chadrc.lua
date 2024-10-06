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
    "gopls"
  },
}
M.base46 = {
  theme = "everforest",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

return M
