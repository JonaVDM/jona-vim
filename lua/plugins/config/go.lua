vim.cmd [[
let g:go_code_completion_enabled = 0
let g:go_test_timeout= '30s'
let g:go_fmt_autosave = 0
let g:go_imports_autosave = 0
let g:go_def_mapping_enabled = 0
]]

vim.keymap.set('n', '<Leader>t', ':GoAlternate<CR>')
vim.keymap.set('n', '<Leader>gt', ':GoTestFunc<CR>')
