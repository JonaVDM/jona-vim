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

}
