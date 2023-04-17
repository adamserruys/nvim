-- This file can be loaded by calling `lua require('plugins')` from your init.vim
local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return packer.startup(function(use)
  -- Packer can manage itself
  use ('wbthomason/packer.nvim')

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use {
      "mcchrish/zenbones.nvim",
      requires = "rktjmp/lush.nvim"
  }
  use ('mbbill/undotree')
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use {
	  'VonHeikemen/lsp-zero.nvim',
      branch ='v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim',
              run = function() pcall(vim.cmd, 'MasonUpdate') end
          },
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},

          -- Linting and Formatting
           use("jose-elias-alvarez/null-ls.nvim"),
           use("jayp0521/mason-null-ls.nvim"),
	  }
  }
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use ('windwp/nvim-autopairs')
  use ('windwp/nvim-ts-autotag')
  use ('ThePrimeagen/harpoon')
  use ('ThePrimeagen/vim-be-good')
end)
