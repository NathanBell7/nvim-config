vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Package Manager:

	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- File Sorting:

	-- Telescope to find files by name or content
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- Language Server Protocol:

	-- LSP zero for easy lsp setup
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

	-- Formatting support with none-ls
	use("nvimtools/none-ls.nvim")

	-- Better syntax colouring
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	-- Quality of Life:

	-- Better tabs as workspaces
	use({
		"nanozuki/tabby.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
	})

	-- Git support
	use("lewis6991/gitsigns.nvim")

	-- Better filetree
	use("nvim-tree/nvim-tree.lua")

	-- Nvim filetree icons
	use("nvim-tree/nvim-web-devicons")

	-- Colour theme
	use({ "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" })

	-- Better statusline
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

	-- Vim practice
	use("ThePrimeagen/vim-be-good")
end)
