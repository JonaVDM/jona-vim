local formatter = require 'lsp-format'
local lsp = require 'lspconfig'

--
-- Util function
--
function onAttach(client)
  formatter.on_attach(client)
  local map = vim.api.nvim_buf_set_keymap

  map(0, "n", "gr", "<cmd>Lspsaga rename<cr>", { silent = true, noremap = true })
  map(0, "n", "gx", "<cmd>Lspsaga code_action<cr>", { silent = true, noremap = true })
  map(0, "x", "gx", ":<c-u>Lspsaga range_code_action<cr>", { silent = true, noremap = true })
  map(0, "n", "K", "<cmd>Lspsaga hover_doc<cr>", { silent = true, noremap = true })
  map(0, "n", "go", "<cmd>Lspsaga show_line_diagnostics<cr>", { silent = true, noremap = true })
  map(0, "n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", { silent = true, noremap = true })
  map(0, "n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", { silent = true, noremap = true })
  map(0, "n", "gd", "<cmd>Lspsaga preview_definition<CR>", { silent = true, noremap = true })
  map(0, "n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", {})
  map(0, "n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>", {})
end

--
-- Setup generic languages
-- (the ones that don't any fancy config)
--
local generic_languages = {
  'cssls',
  'dockerls',
  'eslint',
  'gopls', 
  'html',
  'nixd',
  'svelte',
  'tailwindcss',
  'ts_ls',
  'volar',
  'vuels',
  'yamlls',
  'dartls'
}

for _, lang in ipairs(generic_languages) do
  lsp[lang].setup {
    on_attach = onAttach,
  }
end
