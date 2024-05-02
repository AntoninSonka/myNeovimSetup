-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }


  use({
	  'navarasu/onedark.nvim',
	  as = 'onedark.nvim',
	  style = 'darker',
	  config = function()
		  vim.cmd('colorscheme onedark')
	  end
  })

  use({
	  'bluz71/vim-moonfly-colors',
	  as = 'moonfly',
	  config = function()
		  vim.cmd('colorscheme moonfly')
	  end
  })

  use('mfussenegger/nvim-dap')
  use('mfussenegger/nvim-jdtls')
  use('nvim-lua/plenary.nvim')

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')

  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use "rafamadriz/friendly-snippets"

  use 'm4xshen/autoclose.nvim'

  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  use 'freddiehaddad/feline.nvim'

  -- use { 'yazgoo/vmux', run = 'cargo install vmux' }

  use {
	  "williamboman/mason.nvim",
	  "williamboman/mason-lspconfig.nvim",
	  "neovim/nvim-lspconfig",
  }
end)
