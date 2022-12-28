" File explorer changes
" 	- https://shapeshed.com/vim-netrw/ 

let g:netrw_banner = 0 			" Remove File Explorer Banner
let g:netrw_liststyle = 3  	" File explorer tree

colorscheme elflord 

syntax enable
filetype plugin indent on

set tabstop=3
set shiftwidth=3

packadd! rust.vim
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


" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set laststatus=2


set laststatus=2

set statusline=

set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}

set statusline+=\ %l
set statusline+=\ %*
set statusline+=\ ‹‹
set statusline+=\ %f\ %*
set statusline+=\ ››
set statusline+=\ %m
set statusline+=\ %F
set statusline+=%=
" set statusline+=\ %{LinterStatus()}
set statusline+=\ ‹‹
set statusline+=\ %{strftime('%R',getftime(expand('%')))}
set statusline+=\ ::
set statusline+=\ %n
set statusline+=\ ››\ %*
