filetype plugin indent on

call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-signify'
Plug 'hashivim/vim-terraform'
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'avakhov/vim-yaml'
Plug 'pangloss/vim-javascript'

call plug#end()

"	SignifY
let g:signify_vcs_list = [ 'git', 'hg' ]
let g:signify_realtime = 1

let g:terraform_fmt_on_save = 1

syntax on
set number
set laststatus=2
set noshowmode
set autoindent
set tabstop=3
set shiftwidth=3
set softtabstop=3
filetype plugin indent on

" salt
au BufNewFile,BufRead *.sls set filetype=yaml
au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
