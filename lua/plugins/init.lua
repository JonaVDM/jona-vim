-- Took the inspiration for the bootstrap method from:
-- https://github.com/NvChad/NvChad/blob/main/lua/core/packer.lua

local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e222a" })

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  print "Cloning packer .."
  vim.fn.system { "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path }

  -- install plugins + compile their configs
  vim.cmd "packadd packer.nvim"
end

local packer = require 'packer'

packer.init({
  auto_clean = true,
  compile_on_sync = true,
  git = { clone_timeout = 6000 },
  display = {
    working_sym = "ﲊ",
    error_sym = "✗ ",
    done_sym = " ",
    removed_sym = " ",
    moved_sym = "",
    open_fn = function()
      return require("packer.util").float { border = "single" }
    end,
  },
})

packer.startup(function(use)
  -- Update packer self
  use 'wbthomason/packer.nvim'

  -- Theme/ui stuff
  use {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      vim.cmd.colorscheme "catppuccin"
    end
  }
  use {
    'goolord/alpha-nvim',
    config = function()
      require 'plugins.config.alpha'
    end
  }
  use {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require 'colorizer'.setup()
    end
  }
  use {
    'feline-nvim/feline.nvim',
    config = function()
      require 'feline'.setup()
    end
  }
  use {
    'akinsho/bufferline.nvim',
    tag = "v2.*",
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require 'plugins.config.bufferline'
    end
  }
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require 'indent_blankline'.setup()
    end
  }
  use {
    'rcarriga/nvim-notify',
    requires = { 'nvim-telescope/telescope.nvim' },
    config = function()
      vim.notify = require 'notify'
      require 'telescope'.load_extension 'notify'
    end
  }

  -- telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require 'plugins.config.telescope'
    end
  }
  use {
    'AckslD/nvim-neoclip.lua',
    requires = { 'nvim-telescope/telescope.nvim' },
    config = function()
      require 'telescope'.load_extension 'neoclip'
      require 'neoclip'.setup()
    end
  }

  -- Tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
    config = function()
      require 'plugins.config.nvim-tree'
    end
  }

  -- Git stuff
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require 'plugins.config.gitsigns'
    end
  }
  use 'tpope/vim-fugitive'
  use {
    'ThePrimeagen/git-worktree.nvim',
    requires = { 'nvim-telescope/telescope.nvim' },
    config = function()
      require 'telescope'.load_extension 'git_worktree'
      require 'plugins.config.worktree'
    end
  }

  -- Lsp
  use {
    'lukas-reineke/lsp-format.nvim',
    config = function()
      require 'lsp-format'.setup {}
    end
  }
  use {
    'neovim/nvim-lspconfig',
    requires = {
      'lukas-reineke/lsp-format.nvim',
      'tami5/lspsaga.nvim',
      'hrsh7th/nvim-cmp',
      'onsails/lspkind.nvim',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'honza/vim-snippets',

      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    },
    config = function()
      require 'lsp'
    end
  }

  -- copilot (testing)
  use {
    'github/copilot.vim',
    config = function ()
      vim.api.nvim_set_keymap("i", "<C-J>", "coplilot#Accept('<CR>')", { silent = true, script=true })
      vim.g.copilot_no_tab_map = true
      -- imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
      -- let g:copilot_no_tab_map = v:true
    end
  }

  -- Org mode
  use {
    'nvim-orgmode/orgmode',
    config = function()
      require 'plugins.config.org'
    end
  }
  use {
    'akinsho/org-bullets.nvim',
    config = function()
      require 'org-bullets'.setup()
    end
  }

  -- Other
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    requires = {
      'windwp/nvim-ts-autotag',
      'RRethy/nvim-treesitter-endwise',
      'nvim-treesitter/playground'
    },
    config = function()
      require 'plugins.config.treesitter'
    end
  }
  use {
    "folke/which-key.nvim",
    config = function()
      require 'plugins.config.which-key'
    end
  }
  use {
    'numToStr/Comment.nvim',
    config = function()
      require 'Comment'.setup()
    end
  }
  use {
    'windwp/nvim-autopairs',
    config = function()
      require 'nvim-autopairs'.setup {}
    end
  }
  use {
    'ThePrimeagen/harpoon',
    config = function()
      require 'plugins.config.harpoon'
    end
  }
  use {
    'editorconfig/editorconfig-vim'
  }
end)
