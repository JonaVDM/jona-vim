return {
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require 'plugins.config.gitsigns'
    end
  },
  'tpope/vim-fugitive',
  {
    'ThePrimeagen/git-worktree.nvim',
    dependencies = {
      'nvim-telescope/telescope.nvim',
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require 'plugins.config.worktree'
      require 'telescope'.load_extension 'git_worktree'
    end
  }
}
