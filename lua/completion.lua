require 'nvim-lsp-installer'.setup {}
local lsp = require 'lspconfig'

-- Python
lsp.pyright.setup{}

-- Typescript/react
lsp.tsserver.setup{}

-- Go
lsp.gopls.setup{}

-- Ansible
lsp.ansiblels.setup{}

-- Lua
lsp.sumneko_lua.setup{}

-- Rust
lsp.rust_analyzer.setup{}

-- Docker
lsp.dockerls.setup{}

-- Setup autocomplete
local cmp = require 'cmp'
local lspkind = require 'lspkind'
cmp.setup {
  snippet = {
    expand = function(args)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<leader>d'] = cmp.mapping.scroll_docs(-4),
    ['<leader>f'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-R>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'nvim_lsp_signature_help' },
  },
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol',
      maxwidth = 50,
    })
  }
}
