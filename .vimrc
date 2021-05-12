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

" File System Explorer
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

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

" NERDTree key bindings
" Open NERDTree at vim start
autocmd VimEnter * NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
" ctrl + n => open NERDTree
nnoremap <C-n> :NERDTree<CR>
" ctrl + t => Toggle NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>
" ctrl + f => Find file in folder
nnoremap <C-f> :NERDTreeFind<CR>

" NERDTree settings
" close NERDTree whe file is open
let NERDTreeQuitOnOpen=1

" Highlight lines Git
let g:gitgutter_highlight_lines = 1
let g:gitgutter_highlight_linenrs = 1

" Highlight Signs
let g:gitgutter_override_sign_column_highlight = 0
highlight clear SignColumn
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4
