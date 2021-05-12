" Editor configuration
set number
set encoding=utf-8
set autoindent

set relativenumber

set smarttab
set cindent
set tabstop=2
set shiftwidth=2
" always uses spaces instead of tab characters
set expandtab
set signcolumn=yes

set noswapfile
syntax on
filetype plugin on

" Install plugin
call plug#begin('~/.vim/plugged')
" Themes
Plug 'gosukiwi/vim-atom-dark'

call plug#end()

" Theme
colorscheme atom-dark-256


