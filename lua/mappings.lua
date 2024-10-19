require "nvchad.mappings"

local map = vim.keymap.set

-- debugger keys
map("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "toggle breakpoint" })
map("n", "<leader>dd", "<cmd>:lua require('dap').continue()<CR>", { desc = "start debugger" })
map("n", "<leader>di", "<cmd>:lua require('dapui').eval()<CR>", { desc = "inspect value in debugger" })

--git keys
map("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "LazyGit" })
map("n", "<leader>gh", ":Gitsigns preview_hunk<CR>", { desc = "Preview Git hunk" })
map("n", "<leader>gs", ":Gitsigns stage_hunk<CR>", { desc = "Stage Git hunk" })
map("n", "<leader>gu", ":Gitsigns undo_stage_hunk<CR>", { desc = "Undo stage Git hunk" })
map("n", "<leader>gr", ":Gitsigns reset_hunk<CR>", { desc = "Reset Git hunk" })
map("n", "<leader>gb", ":Gitsigns blame_line<CR>", { desc = "Blame current line" })
map("n", "<leader>gn", ":Gitsigns next_hunk<CR>", { desc = "Next Git hunk" })
map("n", "<leader>gp", ":Gitsigns prev_hunk<CR>", { desc = "Previous Git hunk" })

--Obsession keys
map("n", "<leader>so", require("custom").toggle_obsession, { desc = "Toggle Obsession with session directory" })

--tmux navigation maps
map("n", "<c-h>", "<cmd>TmuxNavigateLeft<cr>")
map("n", "<c-j>", "<cmd>TmuxNavigateDown<cr>")
map("n", "<c-k>", "<cmd>TmuxNavigateUp<cr>")
map("n", "<c-l>", "<cmd>TmuxNavigateRight<cr>")
map("n", "<c-\\>", "<cmd>TmuxNavigatePrevious<cr>")

--toggle_transparency
map("n", "<leader>tt", require("custom").toggle_transparency)

-- noice
map("n", "<leader>nd", "<cmd>NoiceDismiss<cr>")

--quit all
map("n", "<leader>qq", "<cmd>qa<CR>", { desc = "quit all and exit" })


map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
