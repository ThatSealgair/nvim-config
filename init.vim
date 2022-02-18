:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set encoding=UTF-8

call plug#begin()

	Plug 'https://github.com/vim-airline/vim-airline'
	Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
	Plug 'https://github.com/preservim/nerdtree' " NerdTree
	Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
	Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
	Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
	Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
	Plug 'https://github.com/preservim/nerdcommenter'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'cdelledonne/vim-cmake'
	Plug 'https://www.github.com/neomake/neomake'
	Plug 'https://github.com/rust-analyzer/rust-analyzer'
	Plug 'lervag/vimtex'
    Plug 'Konfekt/FastFold'
    Plug 'matze/vim-tex-fold'
	Plug 'dense-analysis/ale'
	Plug 'rebelot/kanagawa.nvim'

call plug#end()

let g:ale_linters = {'rust': ['analyzer']}
let g:ale_disable_lsp = 1

" air-line
set encoding=utf-8   
let g:airlie_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"




"Commands for vimtex"
filetype plugin indent on
syntax enable
let g:tex_flavour = 'tex'
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_method = 'latexmk'
let maplocalleader = ","
