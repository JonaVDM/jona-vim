local lsp = require 'lspconfig'
local lsp_util = require 'lsp.util'
local languages = { 'pyright', 'tsserver', 'eslint', 'gopls', 'ansiblels', 'sumneko_lua', 'rust_analyzer', 'dockerls',
  'yamlls', 'volar', 'ccls', 'omnisharp' }
for _, lang in ipairs(languages) do
  lsp[lang].setup {
    on_attach = lsp_util.OnAttach,
  }
end
