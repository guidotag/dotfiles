function! Tabs(spaces)
	" Existing tabs width
	let &tabstop=a:spaces
	" Inserted tabs width
	let &softtabstop=a:spaces
endfunc

" Line numbering on
set number
" Line numbering width
set numberwidth=4
" Show the filename in the window titlebar
set title
" Allow backspaces over indent, eol and line start
set backspace=indent,eol,start
" Show cursor position
set ruler
" Allow cursor keys in insert mode
set esckeys
" Enable mouse in all modes
set mouse=a
" Copy to clipboard
set clipboard=unnamedplus
" Show the current mode
set showmode

" ================ Plugins ===========================
execute pathogen#infect()

" ================ Indentation =======================
" Existing tabs width
set tabstop=2
" Inserted tabs width
set softtabstop=2
" Correct indentation
set smartindent
" Tabs are spaces
set expandtab
" Auto indent at eol
set autoindent
" Use tabs for Makefile
autocmd FileType make setlocal noexpandtab

" Syntax highlighting
syntax enable

" ================ Colors ============================
set t_Co=256
set background=dark	" or light
let g:solarized_bold=1
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized
