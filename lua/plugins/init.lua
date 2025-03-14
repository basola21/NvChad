return {
  {
    "nvzone/typr",
    dependencies = "nvzone/volt",
    lazy = false,
  },
  {
    "github/copilot.vim",
    lazy = false,
  },
  {
    "stevearc/vim-arduino",
    ft = { "arduino" }
  },
  {
    "basola21/PDFview",
    branch = "dev",
    dependencies = { "nvim-telescope/telescope.nvim" },
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
    ft = { "markdown" },
  },
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      completion = {
        nvim_cmp = true,
        min_chars = 2,
      },
      workspaces = {
        {
          name = "personal",
          path = "~/Documents/Life/",
        },
      },
      notes_subdir = "1 - Rough Notes",
      daily_notes = {
        folder = "7 - Daily Notes",
        date_format = "%Y/%m-%B/%Y-%m-%d-%A",
        alias_format = "%B %-d, %Y",
        template = "Daily Note.md",
      },
      templates = {
        folder = "5 - Template",
      },
      -- ui = {
      --   enable = false
      -- },
    },
  },
  {
    "folke/twilight.nvim",
    ft = { "python", "markdown" },
  },
  { "sindrets/diffview.nvim", lazy = false },
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("telescope").load_extension "lazygit"
    end,
  },
  { "tpope/vim-obsession",    lazy = false },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require "dap"
      local dapui = require "dapui"
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
  {
    "mfussenegger/nvim-dap",
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      --"mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
    },
    config = function(_, opts)
      local path = os.getenv "HOME" .. "/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    lazy = false,
  },
  {
    "tpope/vim-dadbod",
    lazy = false,
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {},
    config = function()
      require "configs.noice"
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      {
        "rcarriga/nvim-notify",
        config = function()
          require "configs.notifyconfig"
        end,
      },
    },
  },
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-telescope/telescope.nvim",
      "mfussenegger/nvim-dap-python",
    },
    event = "VeryLazy",
    branch = "regexp",
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = { "python" },
    opts = function()
      require "configs.null-ls"
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    ft = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
    config = function()
      require("nvim-ts-autotag").setup {
        opts = {
          enable_close = true,
          enable_rename = true,
          enable_close_on_slash = false,
        },
      }
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "python",
        "typescript",
        "javascript",
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "python",
        "go",
      },
    },
  },
}
