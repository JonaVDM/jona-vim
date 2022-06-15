require 'nvim-lsp-installer'.setup {}
local lsp = require 'lspconfig'
local formatter = require 'lsp-format'

formatter.setup {}

local function on_attach(client)
  formatter.on_attach(client)
  local map = vim.api.nvim_buf_set_keymap

  map(0, "n", "gr", "<cmd>Lspsaga rename<cr>", { silent = true, noremap = true })
  map(0, "n", "gx", "<cmd>Lspsaga code_action<cr>", { silent = true, noremap = true })
  map(0, "x", "gx", ":<c-u>Lspsaga range_code_action<cr>", { silent = true, noremap = true })
  map(0, "n", "K", "<cmd>Lspsaga hover_doc<cr>", { silent = true, noremap = true })
  map(0, "n", "go", "<cmd>Lspsaga show_line_diagnostics<cr>", { silent = true, noremap = true })
  map(0, "n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", { silent = true, noremap = true })
  map(0, "n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", { silent = true, noremap = true })
  map(0, "n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", {})
  map(0, "n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>", {})
end

-- Setup languages that do not have any specific settings
local languages = { 'pyright', 'tsserver', 'eslint', 'gopls', 'ansiblels', 'sumneko_lua', 'rust_analyzer', 'dockerls',
  'yamlls', 'volar' }
for _, lang in ipairs(languages) do
  lsp[lang].setup {
    on_attach = on_attach,
  }
end

-- Setup autocomplete
local cmp = require 'cmp'
local lspkind = require 'lspkind'
cmp.setup {
  snippet = {
    expand = function(args)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<leader>d'] = cmp.mapping.scroll_docs(-4),
    ['<leader>f'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-R>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'nvim_lsp_signature_help' },
  },
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol',
      maxwidth = 50,
    })
  },
  experimental = {
    ghost_text = true,
  },
}

local lspsage = require 'lspsaga'
lspsage.setup {
  -- defaults ...
  debug = false,
  use_saga_diagnostic_sign = true,
  -- diagnostic sign
  error_sign = "",
  warn_sign = "",
  hint_sign = "",
  infor_sign = "",
  diagnostic_header_icon = "   ",
  -- code action title icon
  code_action_icon = " ",
  code_action_prompt = {
    enable = true,
    sign = true,
    sign_priority = 40,
    virtual_text = true,
  },
  finder_definition_icon = "  ",
  finder_reference_icon = "  ",
  max_preview_lines = 10,
  finder_action_keys = {
    open = "o",
    vsplit = "s",
    split = "i",
    quit = "q",
    scroll_down = "<C-f>",
    scroll_up = "<C-b>",
  },
  code_action_keys = {
    quit = "q",
    exec = "<CR>",
  },
  rename_action_keys = {
    quit = "<C-c>",
    exec = "<CR>",
  },
  definition_preview_icon = "  ",
  border_style = "single",
  rename_prompt_prefix = "➤",
  rename_output_qflist = {
    enable = false,
    auto_open_qflist = false,
  },
  server_filetype_map = {},
  diagnostic_prefix_format = "%d. ",
  diagnostic_message_format = "%m %c",
  highlight_prefix = false,
}

-- Remove the text hint
vim.diagnostic.config({ virtual_text = false })

-- Took some (aka a lot) inspiration from
-- https://github.com/lukas-reineke/dotfiles
local flake8 = require 'efm.flake8'
local autopep8 = require 'efm.autopep8'
local eslint = require 'efm.eslint'
local prettier = require 'efm.prettier'

lsp.efm.setup {
  on_attach = on_attach,
  init_options = { documentFormatting = true },
  settings = {
    rootMarkers = { ".git/" },
    languages = {
      python = { flake8, autopep8 },
      typescript = { eslint }
    }
  }
}
