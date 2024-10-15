require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local function toggle_transparency()
  require("base46").toggle_transparency()
end
map("n", "<c-h>", "<cmd>TmuxNavigateLeft<cr>")
map("n", "<c-j>", "<cmd>TmuxNavigateDown<cr>")
map("n", "<c-k>", "<cmd>TmuxNavigateUp<cr>")
map("n", "<c-l>", "<cmd>TmuxNavigateRight<cr>")
map("n", "<c-\\>", "<cmd>TmuxNavigatePrevious<cr>")

map("n", "<leader>nd", "<cmd>NoiceDismiss<cr>")
map("n", "<leader>tt", toggle_transparency)
map("n", "<leader>nd", "<cmd>NoiceDismiss<cr>")
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
