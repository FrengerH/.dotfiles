set title
set sw=4
set number
set relativenumber
set clipboard=unnamedplus
set termguicolors
call plug#begin()

Plug 'neovim/nvim-lspconfig'
Plug 'itchyny/lightline.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'https://github.com/nvim-telescope/telescope.nvim'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'doums/darcula'

Plug 'https://github.com/tpope/vim-commentary'

Plug 'norcalli/nvim-colorizer.lua'

call plug#end()

lua require('frengerh')

let mapleader = " "

nnoremap <Leader>pi :PlugInstall<CR>

set completeopt=menu,menuone,noselect

colorscheme darcula
" set termguicolors
let g:lightline = { 'colorscheme': 'darculaOriginal' }
