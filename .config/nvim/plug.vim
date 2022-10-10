if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

if has("nvim")
  " File utils
  Plug 'tpope/vim-fugitive'
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'tpope/vim-rhubarb'
  Plug 'lambdalisue/suda.vim'

  " LSP & Completion
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'
  Plug 'rhysd/vim-clang-format'

  Plug 'neovim/nvim-lspconfig'
  Plug 'tami5/lspsaga.nvim'
  Plug 'folke/lsp-colors.nvim'
  Plug 'onsails/lspkind-nvim'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  
  " Code Formatting
  Plug 'windwp/nvim-autopairs'
  Plug 'windwp/nvim-ts-autotag'
  Plug 'mattn/emmet-vim'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  " Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production', 'branch': 'release/0.x' }

  " NVim UI
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'ellisonleao/glow.nvim', {'branch': 'main'} " markdown preview
  Plug 'goolord/alpha-nvim'
  Plug 'karb94/neoscroll.nvim'

  " Aesthetics
  Plug 'nvim-lualine/lualine.nvim' 
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'shaunsingh/nord.nvim'

  " File managers
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'nvim-telescope/telescope.nvim'
	Plug 'nvim-telescope/telescope-file-browser.nvim'
  Plug 'nvim-telescope/telescope-media-files.nvim'
endif

call plug#end()
