set number
set relativenumber 
set autoindent
set ruler
set incsearch
set autochdir

" Mapping

inoremap jk <Esc> 


let mapleader=","

nnoremap <Leader>q" ciw""<Esc>P
nnoremap <Leader>q' ciw''<Esc>P

syntax on

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

autocmd FileType text    setlocal textwidth=78 softtabstop=0 expandtab shiftwidth=4 smarttab
autocmd Filetype clojure setlocal shiftwidth=4 tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
autocmd Filetype elm     setlocal shiftwidth=4 tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
autocmd FileType rust    setlocal shiftwidth=4 tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
autocmd FileType haskell setlocal shiftwidth=4 tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

set guifont=Fira\ Code:h9

" Plugins

call plug#begin('~/.config/nvim/plugins')
Plug 'https://github.com/PProvost/vim-ps1.git'          " not working :'( 
Plug 'https://github.com/neovimhaskell/haskell-vim.git' " not working :'(  
Plug 'elmcast/elm-vim'
Plug 'scrooloose/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'cespare/vim-toml'
Plug 'gluon-lang/vim-gluon'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'vim-airline/vim-airline'
Plug 'LnL7/vim-nix'
call plug#end()

colorscheme onedark
let g:lightline = { 'colorscheme': 'onedark' }
