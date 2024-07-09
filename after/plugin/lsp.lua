local lsp_zero = require("lsp-zero")
local null_ls = require("null-ls")

-- Setup packages 
lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({ buffer = bufnr })
end)

require("mason").setup({})

require("mason-lspconfig").setup({
	ensure_installed = { "pyright", "clangd", "html", "cssls", "eslint", "tsserver", "gopls", "tailwindcss" },
	handlers = {
		lsp_zero.default_setup,
		clangd = function()
			require("lspconfig").clangd.setup({
				capabilities = {
					offsetEncoding = "utf-16",
				},
			})
		end,
	},
})

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.prettier,
	},
})


require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"c",
		"lua",
		"vim",
		"vimdoc",
		"query",
		"python",
		"javascript",
		"cpp",
		"css",
		"html",
		"typescript",
	},

	sync_install = false,

	auto_install = true,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})

-- Keymaps
vim.keymap.set("n", "<leader>fo", vim.lsp.buf.format, {})
