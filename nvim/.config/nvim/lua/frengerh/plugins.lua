local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.local/share/nvim/plugged')

-- Git
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

Plug 'itchyny/lightline.vim'

Plug 'nvim-lua/plenary.nvim'

-- Telescope
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug('nvim-telescope/telescope-fzf-native.nvim', {['do'] = 'make'})

-- Treesitter
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/nvim-treesitter-textobjects'

-- Lsp
Plug 'neovim/nvim-lspconfig'
Plug "williamboman/nvim-lsp-installer"
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'

-- Html
Plug 'othree/html5.vim'
Plug 'nelsyeung/twig.vim'

-- Theme
Plug 'doums/darcula'

-- Comments
Plug 'https://github.com/tpope/vim-commentary'

-- Colors
Plug 'norcalli/nvim-colorizer.lua'

-- Debugging
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'nvim-telescope/telescope-dap.nvim'

vim.call('plug#end')
