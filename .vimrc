" File explorer changes
" 	- https://shapeshed.com/vim-netrw/ 

" Remove File Explorer Banner
let g:netrw_banner = 0
" File explorer tree
let g:netrw_liststyle = 3



" let g:netrw_browse_split = 3
" let g:netrw_altv = 1
" let g:netrw_winsize = 25
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END


set tabstop=3

packadd! dracula
syntax enable
colorscheme dracula

set number
