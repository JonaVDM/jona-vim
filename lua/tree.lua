-- Setup a file tree
require'nvim-tree'.setup {
    open_on_setup = true,
    open_on_tab = true,
    actions = {
        open_file = {
                resize_window = true
        }
    },
    view = {
        side = 'left',
    },
    git = {
        enable = true,
        ignore = false,
        timeout = 400,
    },
}
vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
      vim.cmd "quit"
    end
  end
})
