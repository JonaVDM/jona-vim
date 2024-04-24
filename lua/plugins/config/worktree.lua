require 'git-worktree'.setup()

vim.api.nvim_create_user_command('WT', 'lua require "telescope".extensions.git_worktree.git_worktrees()', {})
vim.api.nvim_create_user_command('WTA', 'lua require "telescope".extensions.git_worktree.create_git_worktree()', {})
