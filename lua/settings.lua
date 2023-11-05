vim.opt.termguicolors = true

-- removes the text hint
vim.diagnostic.config({ virtual_text = false })

-- So there were some weird things with the vue lsp, this should maybe fix it.
capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = true
