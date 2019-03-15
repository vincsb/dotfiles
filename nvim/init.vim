call plug#begin('~/.vim/plugged')
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'othree/yajs.vim'
  Plug 'mxw/vim-jsx'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
call plug#end()

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" enable 256 colors in vim
set t_Co=256
set termguicolors

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Affiche les numéros de ligne
set number

"Affiche la position du curseur
set ruler

" Set color scheme
set background=dark
colorscheme palenight

let g:lightline = { 'colorscheme': 'palenight' }

" Use spaces for indent
set expandtab
set autoindent

" Set indent to 2
set shiftwidth=2
set tabstop=2
set softtabstop=2
set smarttab

" mapping to tabs
let mapleader = ","

map <leader>tt :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>


" Auto insert closing bracket while coding
inoremap {<CR>  {<CR>}<Esc>O

