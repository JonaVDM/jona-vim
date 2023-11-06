local lsp = require 'lspconfig'
local lsp_util = require 'lsp.util'
local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = true

lsp.volar.setup {
  on_attach = lsp_util.OnAttach,
  capabilities = capabilities,
}
