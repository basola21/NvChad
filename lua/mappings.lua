require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "<leader>cv", "<cmd>VenvSelect<cr>")
map("n", "<leader>nd", "<cmd>NoiceDismiss<cr>")
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
