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
}
vim.api.nvim_set_keymap("n", "<c-n>", "<cmd>NvimTreeFindFile<cr>", { noremap=true })
vim.api.nvim_create_autocmd('BufEnter', {
    command = "if winnr('$') == 1 && bufname() == 'NvimTree' . tabpagenr() | quit | endif",
    nested = true,
})
