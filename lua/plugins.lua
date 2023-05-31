local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- themes
  use { "ellisonleao/gruvbox.nvim" }
  use 'sainnhe/gruvbox-material'

  -- fzf
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0', 
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-lua/plenary.nvim'
  -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }

  use 'L3MON4D3/LuaSnip'
  -- powerline
  use {
    'nvim-lualine/lualine.nvim',     
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Control groups for files
  use 'ThePrimeagen/harpoon'

  -- Autoclose (), <>, {}, etc...
  use 'windwp/nvim-autopairs' 

  -- dims inactive windows
  use 'sunjon/shade.nvim' 

  -- completion
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'


  -- vscode like pictograms
  use 'onsails/lspkind.nvim'
  -- LSP
  use 'neovim/nvim-lspconfig'

  use 'psf/black'

  use 'nvim-treesitter/nvim-treesitter'

  use 'BurntSushi/ripgrep'

  use 'sharkdp/fd'
  use 'airblade/vim-gitgutter'
  use 'folke/tokyonight.nvim'

  -- Git related plugins
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'lewis6991/gitsigns.nvim'

  use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use 'junegunn/fzf'
  use { 'ibhagwan/fzf-lua',
    -- optional for icon support
    requires = { 'nvim-tree/nvim-web-devicons' }
  }
  use { "williamboman/mason.nvim" }
  use { "williamboman/mason-lspconfig.nvim" }
  use { "petertriho/nvim-scrollbar" }
  use 'christoomey/vim-tmux-navigator'
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use 'nvim-tree/nvim-web-devicons'
  --  use {'neoclide/coc.nvim', run = 'yarn install --frozen-lockfile', branch='master'}
end)

