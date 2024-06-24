-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)

	-- Packer can manage itself
	use("wbthomason/packer.nvim")

  -- Telescope to find files by name or content
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

  -- vim practice
	use("ThePrimeagen/vim-be-good")

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
		},
	})

  -- Treesitter for better syntax colouring
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

  -- Better filetree
	use("nvim-tree/nvim-tree.lua")

  -- Nvim filetree icons
	use("nvim-tree/nvim-web-devicons")

  -- Prettier support with none-ls
	use("nvimtools/none-ls.nvim")
  
  -- Git support
	use("lewis6991/gitsigns.nvim")

  -- Colour theme
	use({ "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" })

  -- Github copilot
	use("github/copilot.vim")

end)
