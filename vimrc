filetype plugin indent on
syntax on
set number

call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-signify'
Plug 'hashivim/vim-terraform'

call plug#end()

"	SignifY
let g:signify_vcs_list = [ 'git', 'hg' ]
let g:signify_realtime = 1
let g:terraform_fmt_on_save = 1
