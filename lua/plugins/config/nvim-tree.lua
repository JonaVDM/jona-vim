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
}
vim.api.nvim_set_keymap("n", "<c-b>", "<cmd>NvimTreeFindFile<cr>", { noremap = true })
vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
      vim.cmd "q!"
    end
  end
})
