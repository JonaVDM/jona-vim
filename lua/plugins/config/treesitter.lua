local treesitter = require 'nvim-treesitter.configs'

treesitter.setup({
  ensure_installed = {
    'org',
    'lua',
    'rust',
    'java',
    'javascript',
    'typescript',
    'go',
    'svelte',
    'html',
    'css',
    'php',
    'python'
  },
  highlight = {
    enable = true,
  },
  endwise = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
  playground = {
    enable = true,
  },
})
