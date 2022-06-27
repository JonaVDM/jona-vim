-- Took some (aka a lot) inspiration from
-- https://github.com/lukas-reineke/dotfiles
local flake8 = require 'lsp.efm.flake8'
local autopep8 = require 'lsp.efm.autopep8'
local eslint = require 'lsp.efm.eslint'

lsp = require 'lspconfig'

lsp.efm.setup {
  -- on_attach = on_attach,
  init_options = { documentFormatting = true },
  settings = {
    rootMarkers = { ".git/" },
    languages = {
      python = { flake8, autopep8 },
      typescript = { eslint }
    }
  }
}
