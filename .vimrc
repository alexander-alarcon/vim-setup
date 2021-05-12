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

" Status/tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Theme
colorscheme atom-dark-256

" Tabline
let g:airline#extensions#tabline#enabled = 1
let g:one_allow_italics = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" Status line
let g:airline_theme = "onedark"
