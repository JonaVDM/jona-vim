return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function ()
      vim.cmd.colorscheme "catppuccin"
    end
  },
  {
    'goolord/alpha-nvim',
    config = function ()
      require 'plugins.config.alpha'
    end
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function ()
      require 'colorizer'.setup()
    end
  },
  {
    'kyazdani42/nvim-tree.lua',
    dependencies = {
      'kyazdani42/nvim-web-devicons',
    },
    config = function ()
      require 'plugins.config.nvim-tree'
    end
  },
  {
    'feline-nvim/feline.nvim',
    config = function ()
      require 'feline'.setup()
    end
  },
  {
    'lukas-reineke/indent-blankline.nvim',
     config = function()
       require "ibl".setup()
     end
  }
}
