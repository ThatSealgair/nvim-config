:set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set encoding=UTF-8

call plug#begin()
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'nvim-lua/plenary.nvim'
	"Plug 'nvim-telescope/telescope.nvim'
	Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
	Plug 'https://github.com/preservim/nerdtree' " NerdTree
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'liuchengxu/vim-which-key'
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
	Plug 'sheerun/vim-polyglot'
   	Plug 'Konfekt/FastFold'
    	Plug 'matze/vim-tex-fold'
	Plug 'dense-analysis/ale'
	Plug 'rebelot/kanagawa.nvim'
	Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

call plug#end()

let g:ale_linters = {'rust': ['analyzer']}
let g:ale_disable_lsp = 1

" Vim Script
colorscheme tokyonight

" lualine
lua << END
	require('lualine').setup {
	  options = {
	    icons_enabled = true,
	    theme = 'tokyonight',
	    component_separators = { left = '', right = ''},
	    section_separators = { left = '', right = ''},
	    disabled_filetypes = {},
	    always_divide_middle = true,
	    globalstatus = false,
	  },
	  sections = {
	    lualine_a = {'mode'},
	    lualine_b = {'branch', 'diff', 'diagnostics'},
	    lualine_c = {'filename'},
	    lualine_x = {'encoding', 'fileformat', 'filetype'},
	    lualine_y = {'progress'},
	    lualine_z = {'location'}
	  },
	  inactive_sections = {
	    lualine_a = {},
	    lualine_b = {},
	    lualine_c = {'filename'},
	    lualine_x = {'location'},
	    lualine_y = {},
	    lualine_z = {}
	  },
	  tabline = {},
	  extensions = {}
	}
END


set termguicolors
colorscheme tokyonight

"Commands for vimtex"
filetype plugin indent on
syntax enable
let g:tex_flavour = 'tex'
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_method = 'latexmk'
let maplocalleader = ","
