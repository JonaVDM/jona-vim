let mapleader = ','
call plug#begin('~/.config/nvim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
source ~/.config/nvim/config/nerdtree.vim
source ~/.config/nvim/config/scope.vim
source ~/.config/nvim/config/git.vim

" Devicons for nerdtree/vim-airline
Plug 'ryanoasis/vim-devicons'

" Setup LSP
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
call plug#end()
lua require('completion')

lua require('scope')

colorscheme nord
let g:airline#extensions#tabline#enabled = 1

set encoding=UTF-8
source ~/.config/nvim/config/vars.vim
source ~/.config/nvim/config/keybindings.vim
