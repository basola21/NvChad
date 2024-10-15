local dap = require "dap"
dap.adapters.python = {
  type = "executable",
  command = "/Users/basel/.virtualenvs/debugpy/bin/python",
  args = { "-m", "debugpy.adapter" },
}

dap.configurations.python = {
  {
    -- The first three options are required by nvim-dap
    type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
    request = "launch",
    name = "Launch file",

    -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

    program = "${file}", -- This configuration will launch the current file if used.
    pythonPath = function()
      -- First, check if VIRTUAL_ENV environment variable is set
      local venv = os.getenv "VIRTUAL_ENV"
      if venv and vim.fn.executable(venv .. "/bin/python") == 1 then
        return venv .. "/bin/python"
      end

      -- If VIRTUAL_ENV is not set, look for a 'venv' or '.venv' folder in the current directory
      local cwd = vim.fn.getcwd()
      if vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
        return cwd .. "/venv/bin/python"
      elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
        return cwd .. "/.venv/bin/python"
      else
        -- Fallback to the system Python interpreter
        return "/usr/bin/python3"
      end
    end,
  },
}

table.insert(dap.configurations.python, {
  type = "python",
  request = "launch",
  name = "Django",
  program = vim.fn.getcwd() .. "/manage.py", -- NOTE: Adapt path to manage.py as needed
  args = { "runserver", "--noreload" },
})
