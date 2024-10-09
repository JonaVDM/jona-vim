return {

  -- Main lsp package
  {
    'neovim/nvim-lspconfig',
    dependencies = { 
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    },
    config = function ()
      require 'lsp'
      require 'mason'.setup()
      require 'mason-lspconfig'.setup()
    end
  },

  -- Lsp saga, cool stuff with lsp
  {
    'nvimdev/lspsaga.nvim',
    config = function()
      require('lspsaga').setup({
        lightbulb = {
          sign = false,
        },
      })
    end,
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    }
  },

  -- cmp
  {
    'hrsh7th/nvim-cmp',
    config = function ()
      require 'lsp/cmp'
    end,
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'onsails/lspkind.nvim',

      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'honza/vim-snippets',

      'lukas-reineke/lsp-format.nvim',
      'zbirenbaum/copilot-cmp',
    },
  },

  -- Copilot
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      require 'copilot'.setup {
        suggestion = { enabled = false },
        panel = { enabled = false },
      }
    end,
  },

}
