filetype plugin indent on

call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-signify'
Plug 'hashivim/vim-terraform'
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'

call plug#end()

"	SignifY
let g:signify_vcs_list = [ 'git', 'hg' ]
let g:signify_realtime = 1

let g:terraform_fmt_on_save = 1

syntax on
set number
set laststatus=2
set noshowmode
