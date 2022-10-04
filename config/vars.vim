set number
set relativenumber
set numberwidth=3
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
au BufRead,BufNewFile */Code/Plays/*.yml set filetype=yaml.ansible
au BufRead,BufNewFile */Code/Plays/*.config.yml set filetype=yaml
