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

-- Setup autocomplete
local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<leader>d'] = cmp.mapping.scroll_docs(-4),
    ['<leader>f'] = cmp.mapping.scroll_docs(4),
    ['<leader><Space>'] = cmp.mapping.complete(),
    ['<leader><R>'] = cmp.mapping.confirm {
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
  },
}
