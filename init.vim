set number
set relativenumber 
set autoindent
set ruler
set incsearch
set autochdir

inoremap jk <Esc> 

syntax on
autocmd FileType text setlocal textwidth=78

call plug#begin('~/.config/nvim/plugins')
Plug 'scrooloose/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'gluon-lang/vim-gluon'
"Plug 'othree/html5.vim'
"Plug 'pangloss/vim-javascript'
call plug#end()

colorscheme onedark
let g:lightline = { 'colorscheme': 'onedark' }
