filetype plugin indent on
syntax on
set number

call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-signify'

call plug#end()

"	SignifY
let g:signify_vcs_list = [ 'git', 'hg' ]
let g:signify_realtime = 1
