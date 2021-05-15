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
Plug 'sainnhe/edge'

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

" Editor Utils
" Multicursor
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Auto Pair
Plug 'jiangmiao/auto-pairs'

" Emmet
Plug 'mattn/emmet-vim'

" JS/TS Highlight
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'

" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" COC Plugins
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}

" Snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

call plug#end()

" Theme
" Edge theme
if has('termguicolors')
  set termguicolors
endif
let g:edge_style = 'default'
let g:edge_enable_italic = 1
let g:edge_disable_italic_comment = 1
colorscheme edge

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
let NERDTreeShowHidden=1

" Highlight lines Git
" let g:gitgutter_highlight_lines = 1
let g:gitgutter_highlight_linenrs = 1

" Highlight Signs
" let g:gitgutter_override_sign_column_highlight = 1
" highlight clear SignColumn
" highlight GitGutterAdd ctermfg=2
" highlight GitGutterChange ctermfg=3
" highlight GitGutterDelete ctermfg=1
" highlight GitGutterChangeDelete ctermfg=4

" COC config
" Coc Extensions
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-json', 
  \ ]

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
