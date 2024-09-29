local lsp = require 'lspconfig'

--
-- Setup generic languages
-- (the ones that don't any fancy config)
--
local generic_languages = {
  'gopls', 
  'nixd'
}

for _, lang in ipairs(generic_languages) do
  lsp[lang].setup {}
end
