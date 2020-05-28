set number
set relativenumber 
set autoindent
set ruler
set incsearch
set autochdir
set cursorline
set ruler

" Mapping

inoremap jk <Esc> 
inoremap kj <Esc> 

let mapleader=" "

nnoremap <Leader>q" ciw""<Esc>P
nnoremap <Leader>q' ciw''<Esc>P
nnoremap <Leader>q( ciw()<Esc>P
nnoremap <Leader>qp ciw()<Esc>P
nnoremap <Leader>qb ciw[]<Esc>P
nnoremap <Leader>qs ciw{}<Esc>P

nnoremap <Leader>Q" ciW""<Esc>P
nnoremap <Leader>Q' ciW''<Esc>P
nnoremap <Leader>Q( ciW()<Esc>P
nnoremap <Leader>Qp ciW()<Esc>P
nnoremap <Leader>Qb ciW[]<Esc>P
nnoremap <Leader>Qs ciW{}<Esc>P

xnoremap <Leader>q" c""<Esc>P
xnoremap <Leader>q' c''<Esc>P
xnoremap <Leader>q( c()<Esc>P
xnoremap <Leader>qp c()<Esc>P
xnoremap <Leader>qb c[]<Esc>P
xnoremap <Leader>qs c{}<Esc>P

" Move between buffers with hjkl
 
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nnoremap <A-j> :resize +2<CR>
nnoremap <A-k> :resize -2<CR>
nnoremap <A-h> :vertical resize +2<Cr>
nnoremap <A-l> :vertical resize -2<Cr>

nnoremap <Leader>j <C-x>
nnoremap <Leader>k <C-a>
nnoremap <Leader>h 10<C-x>
nnoremap <Leader>l 10<C-a>

nnoremap <Up>    :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<Cr>
nnoremap <Right> :vertical resize -2<Cr>

xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

inoremap <C-s> <Esc>:w<CR>
nnoremap <C-s> <Esc>:w<CR>

map <C-n> :NERDTreeToggle<CR>
map <C-r> :source $MYVIMRC<CR>

map <C-x><F12> :so $VIMRUNTIME/syntax/hitest.vim<CR>

syntax on

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

autocmd FileType text    setlocal textwidth=78 softtabstop=0 expandtab shiftwidth=4 smarttab
autocmd Filetype clojure setlocal shiftwidth=4 tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
autocmd Filetype elm     setlocal shiftwidth=4 tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
autocmd FileType rust    setlocal shiftwidth=4 tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
autocmd FileType haskell setlocal shiftwidth=4 tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
autocmd FileType elixir  setlocal shiftwidth=4 tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

set guifont=Fira\ Code

" Status-line

set statusline=
set statusline+=%#IncSearch#
set statusline+=\ %M
set statusline+=\ %y
set statusline+=\ %r
set statusline+=\ %F
set statusline+=%=
set statusline+=%#MatchParen#
set statusline+=\ %p%%
set statusline+=\ [%c:%l/%L]
set statusline+=\ [%n]
set statusline+=%#String#
set statusline+=\ %{strftime(\"%H:%M\")}

" Plugins

call plug#begin('~/.config/nvim/plugins')
Plug 'https://github.com/PProvost/vim-ps1.git'          " not working :'( 
Plug 'https://github.com/neovimhaskell/haskell-vim.git' " not working :'(  
Plug 'elmcast/elm-vim'
Plug 'scrooloose/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'joshdick/onedark.vim'
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'cespare/vim-toml'
Plug 'gluon-lang/vim-gluon'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'LnL7/vim-nix'
Plug 'elixir-editors/vim-elixir'
"Plug 'vim-airline/vim-airline'
"Plug 'itchyny/lightline.vim'
call plug#end()

colorscheme onedark
"let g:lightline = { 'colorscheme': 'onedark' }

cd $HOME
