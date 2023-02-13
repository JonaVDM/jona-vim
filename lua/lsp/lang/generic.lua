local lsp = require 'lspconfig'
local lsp_util = require 'lsp.util'

local languages = {
  'pyright',
  'tsserver',
  'eslint',
  'gopls',
  'ansiblels',
  'rust_analyzer',
  'dockerls',
  'yamlls',
  'ccls',
  'jdtls',
  'svelte'
}

for _, lang in ipairs(languages) do
  lsp[lang].setup {
    on_attach = lsp_util.OnAttach,
  }
end
