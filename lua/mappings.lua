require "nvchad.mappings"

local map = vim.keymap.set

-- debugger keys
map("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "toggle breakpoint" })
map("n", "<leader>dd", "<cmd>:lua require('dap').continue()<CR>", { desc = "start debugger" })
map("n", "<leader>di", "<cmd>:lua require('dapui').eval()<CR>", { desc = "inspect value in debugger" })
map("n", "<leader>dc", "<cmd>:lua require('dap').step_into()<CR>", { desc = "inspect value in debugger" })

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
map("n", "<leader>sl", require("custom").load_obsession_session, { desc = "Load Obsession session" })
map("n", "<leader>sd", require("custom").delete_obsession_session, { desc = "Load Obsession session" })

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

--replace all
map("n", "<leader>rr", ":%s/\\<<C-r><C-w>\\>//g<left><left>", { desc = "replace an occurrence of a word in a file" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
map("n", "-", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically
map("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
map("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -

map("v", "fm", require("custom").format_selected, { desc = "format selected range" })

-- obsidian
map("n", "<leader>od", ":ObsidianToday<CR>", { desc = "create today note" })
map("v", "<leader>on", ":ObsidianLinkNew<CR>", { desc = "create new link" })
map("n", "<leader>of", ":ObsidianFollowLink<CR>", { desc = "obsidian follow link" })
map("n", "<leader>on", ":ObsidianNew<CR>", { desc = "obsidian create new note" })

-- pdfview
map("n", "<leader>jj", "<cmd>:lua require('pdfview.renderer').next_page()<CR>", { desc = "pdfview next page" })
map("n", "<leader>kk", "<cmd>:lua require('pdfview.renderer').previous_page()<CR>", { desc = "pdfview previous page" })

-- Arduino keys
map("n", "<leader>aa", "<cmd>ArduinoAttach<CR>", { desc = "Attach to Arduino" })
map("n", "<leader>av", "<cmd>ArduinoVerify<CR>", { desc = "Verify Arduino code" })
map("n", "<leader>au", "<cmd>ArduinoUpload<CR>", { desc = "Upload to Arduino" })
map("n", "<leader>aus", "<cmd>ArduinoUploadAndSerial<CR>", { desc = "Upload and open Serial Monitor" })
map("n", "<leader>as", "<cmd>ArduinoSerial<CR>", { desc = "Open Arduino Serial Monitor" })
map("n", "<leader>ab", "<cmd>ArduinoChooseBoard<CR>", { desc = "Choose Arduino Board" })
map("n", "<leader>ap", "<cmd>ArduinoChooseProgrammer<CR>", { desc = "Choose Arduino Programmer" })
map("i", "<C-J>", 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false })
