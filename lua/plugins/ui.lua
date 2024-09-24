return {

  -- Theme
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    config = function ()
      vim.cmd.colorscheme 'catppuccin'
    end
  },

  -- Start screen
  {
    'letieu/btw.nvim',
    config = function()
      require 'btw'.setup()
    end
  }

  -- Filetree
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require 'nvim-tree'.setup {
        open_on_tab = true,
        actions = {
          open_file = {
            resize_window = true
          }
        },
        view = {
          adaptive_size = false,
          side = "left",
          width = 30,
        },
        hijack_cursor = true,
        sync_root_with_cwd = true,
      }
      vim.api.nvim_set_keymap("n", "<c-b>", "<cmd>NvimTreeFindFile<cr>", { noremap = true })
    end
  }

}
