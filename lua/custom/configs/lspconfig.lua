
local configs = require("plugins.configs.lspconfig")

local servers = {
  clangd = {},
  pyright = {},
  ts_ls = {},
  lua_ls = {
    settings = {
      Lua = {
        diagnostics = { globals = { "vim" } },
      },
    },
  },
  marksman = {},
}

vim.lsp.enable(vim.tbl_keys(servers))  -- Enable all
