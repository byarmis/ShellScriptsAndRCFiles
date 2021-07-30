" START vim-plug
set nocompatible              " be iMproved, required
filetype off

call plug#begin('~/.vim/plugged')

Plug 'VundleVim/Vundle.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'crusoexia/vim-monokai'

call plug#end()
filetype plugin indent on
" END VUNDLE

syntax enable
colorscheme monokai
set relativenumber
set number " show line numbers
set cursorline " highlight current line

set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing
set expandtab " tabs are spaces
set shiftwidth=4 " > and < move by 4

" CTRL + N toggles NERDTree
map <C-n> :NERDTreeToggle<CR>

set laststatus=2 " have airline / powerline... work

autocmd FileType tex setlocal makeprg=pdflatex\ --shell-escape\ '%' " To compile LaTeX files, do :make

" j and k now move over viusal lines instead of normal lines
nnoremap j gj
nnoremap k gk

imap jk <Esc>

" Remaps CTRL + HJKL to change buffers
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Y now yanks to end of line, like C and D
nnoremap Y y$

" Searching-- intelligent case searching and incremental
set ignorecase
set smartcase
set incsearch

let NERDTreeIgnore = ['\.pyc$', '__pycache_']

set whichwrap+=<,>,h,l,[,] " left and right at end of lines will wrap

" \ + = and \ + - increase and decrease vsplit size
nnoremap \= :exe "vertical resize +10"<CR>
nnoremap \- :exe "vertical resize -10"<CR>

" New split panes open to the bottom and right
set splitbelow
set splitright

nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

let NERDTreeIgnore= ['\.pyc$'] " Ignore .pyc files
set backupcopy=yes " Works with webpack
