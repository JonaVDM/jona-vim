local lsp = require 'lspconfig'
local lsp_util = require 'lsp.util'
local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp.emmet_ls.setup {
  on_attach = lsp_util.OnAttach,
  capabilities = capabilities,
  filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'scss' },
}
