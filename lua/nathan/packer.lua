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

  use ('theprimeagen/harpoon')

  use('ThePrimeagen/vim-be-good')

  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},
        -- Autocompletion
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'L3MON4D3/LuaSnip'},
      }
    }

  use('nvim-treesitter/nvim-treesitter',{run = ':TSUpdate'}) 

  use('nvim-tree/nvim-tree.lua')

  use('nvim-tree/nvim-web-devicons')
  
  use('nvimtools/none-ls.nvim')

  use('lewis6991/gitsigns.nvim')

end)



