local lsp = require 'lspconfig'
local lsp_util = require 'lsp.util'

local languages = {
  'eslint',
  'gopls',
  'ansiblels',
  'rust_analyzer',
  'dockerls',
  'yamlls',
  'jdtls',
  'tailwindcss',
  'intelephense',
  'dartls',
  'pylsp'
}

for _, lang in ipairs(languages) do
  lsp[lang].setup {
    on_attach = lsp_util.OnAttach,
  }
end
