Plug 'preservim/nerdtree'
nnoremap <leader>b :NERDTreeFind<CR>

" Run Nerdtree on startup
autocmd VimEnter * NERDTreeFind | wincmd p

" Close nerdtree when closing other all other windows
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

Plug 'Xuyuanp/nerdtree-git-plugin'
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusShowIgnored = 1

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
