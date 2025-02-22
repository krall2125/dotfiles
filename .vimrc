syntax on

let g:mapleader=' '

set tabstop=8
set shiftwidth=8
set smarttab
set autoindent
set backspace=indent,eol,start belloff=all
set number relativenumber
set noexpandtab
set termguicolors
set t_Co=256
set clipboard=unnamedplus
set signcolumn=number
set list
set colorcolumn=80

call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-abolish'
Plug 'morhetz/gruvbox'

call plug#end()

set background=dark

let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='hard'

colorscheme gruvbox
