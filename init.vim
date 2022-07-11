let mapleader = ','

lua << EOF
require 'init'
EOF

colorscheme nord

set encoding=UTF-8
source ~/.config/nvim/config/vars.vim
source ~/.config/nvim/config/keybindings.vim
