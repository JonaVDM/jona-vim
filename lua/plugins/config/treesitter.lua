local treesitter = require 'nvim-treesitter.configs'

treesitter.setup({
  highlight = {
    ensure_installed = 'org',
    enable = true,
    additional_vim_regex_highlighting = { 'org' },
  },
  endwise = {
    enable = true,
  },
  autotag = {
    enable = true,
  }
})
