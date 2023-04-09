set number
set relativenumber
set numberwidth=4
set textwidth=0
set nowrap
set showcmd
set showmatch
set ruler
set laststatus=2
set autoindent
set ts=2
set sw=2
set et
set splitright

if has("mouse")
	set mouse=a
endif
set mousehide
filetype plugin on
set updatetime=300
set nohlsearch
set colorcolumn=80,120
set laststatus=3
au BufRead,BufNewFile */infrastructure/**/*.yml set filetype=yaml.ansible
au BufRead,BufNewFile */infrastructure/**/*.config.yml set filetype=yaml
au BufRead,BufnewFile *.java set expandtab ts=4 sw=4 ai
au BufRead,BufnewFile *.php set expandtab ts=4 sw=4 ai

command WT lua require 'telescope'.extensions.git_worktree.git_worktrees()
command WTA lua require 'telescope'.extensions.git_worktree.create_git_worktree()
