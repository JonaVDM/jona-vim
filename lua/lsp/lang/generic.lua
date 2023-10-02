local lsp = require 'lspconfig'
local lsp_util = require 'lsp.util'

local languages = {
  'tsserver',
  'eslint',
  'gopls',
  'ansiblels',
  'rust_analyzer',
  'dockerls',
  'yamlls',
  'jdtls',
  'svelte',
  'tailwindcss',
  'intelephense',
  'volar',
  'jedi_language_server',
  'dartls'
}

for _, lang in ipairs(languages) do
  lsp[lang].setup {
    on_attach = lsp_util.OnAttach,
  }
end
