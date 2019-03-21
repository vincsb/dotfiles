call plug#begin('~/.vim/plugged')
  Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'othree/yajs.vim'
  Plug 'mxw/vim-jsx'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'w0rp/ale'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  " Plug 'ludovicchabant/vim-gutentags'
  Plug 'airblade/vim-gitgutter'
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

" Set utf8 as standard encoding
set encoding=utf8
" Transliterate files in UTF-8
set fileencoding=utf-8

" Set python interpreter version
let g:pymode_python = 'python3'

" Set color scheme
set background=dark
colorscheme palenight

let g:lightline = { 'colorscheme': 'palenight' }

" Show hidden files inside NERDTree
let NERDTreeShowHidden=1
" Autoquit NerdTREE after openning a file
let NERDTreeQuitOnOpen=1

" open nerd tree
map <C-P> :NERDTreeToggle<CR>

" open nerd tree at the file with ù+p
nnoremap <Leader>p :NERDTreeFind<CR>

" To disable the weird ? for help
let NERDTreeMinimalUI = 0
let NERDTreeDirArrows = 1

" Use spaces for indent
set expandtab
set autoindent

" Set indent to 2
set shiftwidth=2
set tabstop=2
set softtabstop=2
set smarttab

" linter configuration
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 1
let g:ale_set_highlights = 1
let g:ale_javascript_eslint_use_global = 0
let g:ale_completion_enabled = 1

" mapping to tabs
let mapleader = ","

map <leader>tt :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>

" Auto insert closing bracket while coding
inoremap {<CR>  {<CR>}<Esc>O

" FZF
set rtp+=/usr/local/opt/fzf

" Ignore case when searching
set ignorecase

"let g:UltiSnipsSnippetsDir = '~/nvim/snippets'
"let g:UltiSnipsEditSplit = 'tabdo'

"let g:UltiSnipsJumpForwardTrigger = '<leader>sn'
"let g:UltiSnipsJumpBackwardTrigger = '<leader>sp'

" COC
