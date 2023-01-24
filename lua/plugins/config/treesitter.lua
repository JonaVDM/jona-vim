local treesitter = require 'nvim-treesitter.configs'

treesitter.setup({
  ensure_installed = { 'org', 'lua', 'rust', 'java', 'javascript', 'typescript', 'go', 'svelte' },
  highlight = {
    enable = true,
    -- additional_vim_regex_highlighting = { 'org' },
    additional_vim_regex_highlighting = true,
  },
  endwise = {
    enable = true,
  },
  autotag = {
    enable = true,
  }
})
