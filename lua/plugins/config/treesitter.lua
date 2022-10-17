local treesitter = require 'nvim-treesitter.configs'

treesitter.setup({
  ensure_installed = { 'org', 'lua', 'rust', 'java', 'javascript', 'typescript', 'go' },
  highlight = {
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
