-- Primary a plugin file filled with things that do not really have a good
-- category.
return {

  -- Automatically close down pair tags, like: '"{[(
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {},
  },

  -- Toggle booleans
  {
    'rmagatti/alternate-toggler',
    config = function()
      require("alternate-toggler").setup {}
    end,
    keys = {
      { '<leader><space>', '<cmd>lua require("alternate-toggler").toggleAlternate()<CR>' },
    }
  },

}
