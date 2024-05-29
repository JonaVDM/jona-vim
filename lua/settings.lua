-- set leader to `,`
vim.g.mapleader = ","

vim.opt.termguicolors = true

-- removes the text hint
vim.diagnostic.config({ virtual_text = false })

-- Custom command for quick json formatting - needs jq to be installed
vim.api.nvim_create_user_command('Json', '%!jq .', {})

-- auto remove trailing white space from yaml files
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern='*.yml,*.nix',
  command = "%s/\\s\\+$//e"
})

-- add bicep
vim.cmd [[ autocmd BufNewFile,BufRead *.bicep set filetype=bicep ]]

-- Build in options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4
vim.opt.textwidth = 0
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.ruler = true
vim.opt.laststatus = 2
vim.opt.autoindent = true 
vim.opt.ts = 2
vim.opt.sw = 2
vim.opt.et = true
vim.opt.splitright = true
vim.opt.scrolloff = 5
vim.opt.updatetime = 300
vim.opt.colorcolumn = '80,120'
vim.opt.laststatus = 3
vim.opt.mousehide = true
vim.opt.mouse = 'a'
vim.opt.wrap = false
vim.opt.signcolumn = 'yes'
