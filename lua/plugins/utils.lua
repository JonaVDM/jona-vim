-- Primary a plugin file filled with things that do not really have a good
-- category.
return {

  -- Automatically close down pair tags, like: '"{[(
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {},
  },

}