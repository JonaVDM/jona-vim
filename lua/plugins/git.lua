return {
  
  -- vim fugitive, a collection of very useful git things (:G)
  {
    'tpope/vim-fugitive'
  },

  -- Git signs (shows fancy things next to the linenumber)
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require 'gitsigns'.setup()
    end
  },

}
