return {
  
  -- keybindings
  {
    'christoomey/vim-tmux-navigator',
    cmd = {
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
    },
    keys = {
      { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
      { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
      { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
      { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
      { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
    },
  },

  -- Telescope, file picker
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      { '<leader>p', '<cmd>Telescope find_files<cr>' },
      { '<leader><c-p>', '<cmd>Telescope live_grep<cr>' },
    },
    config = function()
      require 'telescope'.setup {
        defaults = {
          file_ignore_patterns = { 'node_modules', 'plugged', '.git', 'target', 'vendor', 'dist' },
        },
        pickers = {
          find_files = {
            hidden = true
          }
        },
      }
    end
  }
}
