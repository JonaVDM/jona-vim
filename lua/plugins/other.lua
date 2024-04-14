return {
  -- Theme/ui stuff
  -- {
  --   'rcarriga/nvim-notify',
  --   dependencies = { 'nvim-telescope/telescope.nvim' },
  --   config = function()
  --     vim.notify = require 'notify'
  --     require 'telescope'.load_extension 'notify'
  --   end
  -- },

  -- extra go stuff
  {
    'fatih/vim-go',
    config = function ()
      require 'plugins.config.go'
    end
  },

  -- Other
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    dependencies = {
      'windwp/nvim-ts-autotag',
      'RRethy/nvim-treesitter-endwise',
      'nvim-treesitter/playground'
    },
    config = function()
      require 'plugins.config.treesitter'
    end
  },
  {
    "folke/which-key.nvim",
    config = function()
      require 'plugins.config.which-key'
    end
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require 'Comment'.setup()
    end
  },
  {
    'windwp/nvim-autopairs',
    config = function()
      require 'nvim-autopairs'.setup {}
    end
  },
  {
    'ThePrimeagen/harpoon',
    config = function()
      require 'plugins.config.harpoon'
    end
  },
  {
    'christoomey/vim-tmux-navigator'
  },
  {
    'kkoomen/vim-doge',
    run = ':call doge#install()',
    config = function ()
      require 'plugins.config.doge'
    end
  },
  {
    'rmagatti/alternate-toggler',
    config = function()
      require("alternate-toggler").setup {}

      vim.keymap.set(
        "n",
        "<leader>a", 
        "<cmd>lua require('alternate-toggler').toggleAlternate()<CR>"
      )
    end
  }
  -- {
  --   'rest-nvim/rest.nvim',
  --   dependencies = { 'nvim-lua/plenary.nvim' },
  --   config = function ()
  --     require 'plugins.config.rest'
  --   end
  -- },
}
