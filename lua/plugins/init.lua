return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },

  -- treesitter for code highlights
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      -- We call the setup directly from the main module now
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
        sync_install = false,
        auto_install = true,
        highlight = {
          enable = true,
          -- Use standard Neovim syntax coloring alongside Treesitter if you want, 
          -- but usually, false is better for performance.
          additional_vim_regex_highlighting = false,
        },
        indent = { enable = true },
      })
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "pyright", "ts_ls", "lua_ls", "marksman" },  -- Auto-install these on startup
      automatic_installation = true,  -- Install missing servers automatically when vim.lsp.config() is called
    },
  },
}

