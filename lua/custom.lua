-- Directory where all session folders will be stored
local session_base_dir = vim.fn.expand "~/sessions/" -- Change this to your preferred base directory
local M = {}

M.format_selected = function()
  local start_pos = vim.fn.getpos("'<")
  local end_pos = vim.fn.getpos("'>")
  require("conform").format({
    lsp_fallback = true,
    range = {
      ["start"] = { start_pos[2], start_pos[3] - 1 },
      ["end"] = { end_pos[2], end_pos[3] - 1 },
    },
  })
end
-- Function to toggle Obsession and save session files inside a folder
M.toggle_obsession = function()
  -- Check if Obsession is currently active
  if vim.g.this_obsession then
    -- Stop tracking the session by calling Obsession without a directory
    vim.cmd "Obsession"
    print "Obsession stopped."
  else
    -- Get the current working directory name to use as a session folder name
    local session_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
    local session_dir = session_base_dir .. session_name
    local session_file = session_dir .. "/session.vim"

    -- Ensure the session directory exists
    vim.fn.mkdir(session_dir, "p")

    -- Check if the session file exists
    if vim.fn.filereadable(session_file) == 1 then
      -- Source the session file (load the session)
      vim.cmd("source " .. session_file)
      print("Session loaded from " .. session_file)
    end

    -- Start Obsession in the specific folder with a session.vim file
    vim.cmd("Obsession " .. session_file)
    print "Obsession started."
  end
end

M.load_obsession_session = function()
  -- Get the current working directory name to use as a session folder name
  local session_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
  local session_dir = session_base_dir .. session_name
  local session_file = session_dir .. "/session.vim"

  -- Check if the session file exists
  if vim.fn.filereadable(session_file) == 1 then
    -- Source the session file (load the session)
    vim.cmd("source " .. vim.fn.fnameescape(session_file))
    print("Session loaded from " .. session_file)
  else
    print("No session file found for the current directory.")
  end
end

M.toggle_transparency = function()
  require("base46").toggle_transparency()
end

return M
