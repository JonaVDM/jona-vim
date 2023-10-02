-- Took some (aka a lot) inspiration from
-- https://github.com/lukas-reineke/dotfiles
local flake8 = require 'lsp.efm.flake8'
local autopep8 = require 'lsp.efm.autopep8'
local eslint = require 'lsp.efm.eslint'
local prettier = require 'lsp.efm.prettier'

local util = require 'lsp.util'

require 'lspconfig'.efm.setup {
  on_attach = util.OnAttach,
  init_options = { documentFormatting = true },
  settings = {
    rootMarkers = { ".git/" },
    languages = {
      python = { flake8, autopep8 },
      typescript = { eslint },
      typescriptreact = { eslint },
    }
  }
}
