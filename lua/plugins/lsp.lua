return {
  {
    'lukas-reineke/lsp-format.nvim',
    config = function()
      require 'lsp-format'.setup {}
    end
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'lukas-reineke/lsp-format.nvim',
      'nvimdev/lspsaga.nvim',
      'hrsh7th/nvim-cmp',
      'onsails/lspkind.nvim',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'honza/vim-snippets',

      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons'
    },
    config = function()
      require 'lsp'
    end
  }
}
