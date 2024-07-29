" File explorer changes
" 	- https://shapeshed.com/vim-netrw/ 

let g:netrw_banner = 0 		" Remove File Explorer Banner
let g:netrw_liststyle = 3  	" File explorer tree

colorscheme elflord 

syntax enable
filetype plugin indent on

set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

syntax enable
filetype plugin indent on

" Hybrid numbering, relative except the current line. 
set number
"set relativenumber
set ruler


set ignorecase
set smartcase
set wildmode=longest,list


" Tab shortcuts
map <F3> :tabp<CR>
map <F4> :tabn<CR>
map <F5> :tabnew


