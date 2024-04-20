local lsp = require 'lspconfig'
local lsp_util = require 'lsp.util'

-- requires dotnet-sdk_8 to be installed

lsp.bicep.setup {
  on_attach = lsp_util.OnAttach,
  cmd = { "bicep-lsp" }
}
