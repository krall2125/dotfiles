syntax on

let g:mapleader=' '

set smarttab
set autoindent
set backspace=indent,eol,start belloff=all
set number relativenumber
set noexpandtab
set termguicolors
set t_Co=256
set clipboard=unnamedplus

call plug#begin()

Plug 'morhetz/gruvbox'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'rose-pine/vim', { 'as': 'rose-pine' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

set background=dark

let g:gruvbox_contrast_dark='medium'
let g:gruvbox_contrast_light='medium'
let g:airline_theme='catppuccin_mocha'

colorscheme catppuccin_mocha

let g:asyncomplete_auto_completeopt = 0

set completeopt=menuone,noinsert,preview

" inoremap <expr> <Tab>   pumvisible() ? "\<C-y>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-e>" : "\<S-Tab>"
" inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() . "\<cr>" : "\<cr>"
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"
inoremap <expr> <Down> coc#pum#visible() ? coc#pum#next(1) : "\<C-o>gj"
inoremap <expr> <Up> coc#pum#visible() ? coc#pum#prev(1) : "\<C-o>gk"

inoremap <expr> <S-Down> coc#pum#visible() ? coc#pum#cancel() . "<Down>" : "\<Down>"
inoremap <expr> <S-Up> coc#pum#visible() ? coc#pum#cancel() . "<Up>" : "\<Up>"
inoremap <expr> <S-TAB> coc#pum#visible() ? coc#pum#cancel() . "\<C-h>" : "\<C-h>"

inoremap <expr><S-TAB> "\<C-h>"
nmap <leader>nx :Explore<CR>

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

nnoremap <expr> dd "\"_dd"
vnoremap <expr> d "\"_d"

nnoremap <silent> <lt> <lt><lt>
nnoremap <silent> > >>
vnoremap <silent> <lt> <lt>gv
vnoremap <silent> > >gv

function! s:on_lsp_buffer_enabled() abort
	setlocal omnifunc=lsp#complete
	setlocal signcolumn=yes
	if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
	nmap <buffer> gd <plug>(coc-definition)
	nmap <buffer> gs <plug>(coc-document-symbol-search)
	nmap <buffer> gS <plug>(coc-workspace-symbol-search)
	nmap <buffer> gr <plug>(coc-references)
	nmap <buffer> gi <plug>(coc-implementation)
	nmap <buffer> gt <plug>(coc-type-definition)
	nmap <buffer> <leader>rn <plug>(coc-rename)
	nmap <buffer> [g <plug>(coc-previous-diagnostic)
	nmap <buffer> ]g <plug>(coc-next-diagnostic)
	nmap <buffer><silent> K :call CocActionAsync('doHover')<CR>
	vmap <buffer><silent> <leader>ca <plug>(coc-codeaction-selected)
endfunction

call s:on_lsp_buffer_enabled()
