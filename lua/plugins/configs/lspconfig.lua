
local on_attach = function(client, bufnr)
  -- Add your keymaps here, e.g.:
  -- vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr })
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

return {
  on_attach = on_attach,
  capabilities = capabilities,
}
