set number
set relativenumber 
set autoindent
set ruler
set incsearch

inoremap jk <Esc> 
inoremap <S-Space> <Esc>

syntax on
autocmd FileType text setlocal textwidth=78

call plug#begin('~/.config/nvim/plugins')

Plug 'scrooloose/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'

call plug#end()

colorscheme onedark
let g:lightline = { 'colorscheme': 'onedark' }
