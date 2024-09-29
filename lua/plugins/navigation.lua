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
  },

  -- quick switch files
  {
    'ThePrimeagen/harpoon',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      { '<leader>a', ':lua require("harpoon.mark").add_file()<cr>' },
      { '<leader>e', ':lua require("harpoon.ui").toggle_quick_menu()<cr>' },
      { '<leader>1', ':lua require("harpoon.ui").nav_file(1)<cr>' },
      { '<leader>2', ':lua require("harpoon.ui").nav_file(2)<cr>' },
      { '<leader>3', ':lua require("harpoon.ui").nav_file(3)<cr>' },
      { '<leader>4', ':lua require("harpoon.ui").nav_file(4)<cr>' },
      { '<leader>4', ':lua require("harpoon.ui").nav_file(5)<cr>' },
      { '<leader>4', ':lua require("harpoon.ui").nav_file(6)<cr>' },
    },
  },
}
