Plug 'preservim/nerdcommenter'
let g:NERDCreateDefaultMappings = 1
nmap <leader>/ :call nerdcommenter#Comment(0, "invert")<cr>
vmap <leader>/ :call nerdcommenter#Comment(0, "invert")<cr>
let g:NERDSpaceDelims = 1
