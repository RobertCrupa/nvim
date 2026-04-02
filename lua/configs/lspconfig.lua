-- Load NvChad's LSP defaults (keymaps: gd, gD, etc. + diagnostics config)
require("nvchad.configs.lspconfig").defaults()

-- Override default capabilities with blink.cmp enhanced ones
vim.lsp.config('*', {
  capabilities = require('blink.cmp').get_lsp_capabilities(),
})

-- Server-specific settings
vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      diagnostics = { globals = { 'vim' } },
    },
  },
})

vim.lsp.config('rust_analyzer', {
  settings = {
    ['rust-analyzer'] = {},
  },
})

-- Enable all servers (mason-lspconfig auto-installs pyright, ts_ls, lua_ls, marksman)
vim.lsp.enable({
  'pyright',
  'ts_ls',
  'lua_ls',
  'clangd',
  'marksman',
  'rust_analyzer',
})
