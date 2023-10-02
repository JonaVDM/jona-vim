require 'mason'.setup {}

require 'mason-lspconfig'.setup {
  ensure_installed = {
    'tsserver',
    'eslint',
    'gopls',
    'rust_analyzer',
    'dockerls',
    'yamlls',
    'svelte',
    'efm',
    'emmet_ls',
    'volar',
    'jedi_language_server'
  }
}
