let mapleader = ','
call plug#begin('~/.config/nvim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
source ~/.config/nvim/config/nerdtree.vim

" Devicons for nerdtree/vim-airline
Plug 'ryanoasis/vim-devicons'
call plug#end()

lua require('completion')

colorscheme nord
let g:airline#extensions#tabline#enabled = 1

set encoding=UTF-8
