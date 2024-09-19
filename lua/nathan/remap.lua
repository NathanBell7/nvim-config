vim.g.mapleader = " "

-- General
vim.keymap.set("n", "<leader>noh", "<cmd>noh<cr>")
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>")
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>")
vim.keymap.set("n", "<leader>md", "<cmd>!ghostwriter %<cr>")

-- Tabs
vim.keymap.set("n", "<C-l>", "gt")
vim.keymap.set("n", "<C-h>", "gT")
vim.keymap.set("n", "<leader>]", "<cmd>tabm +1<cr>")
vim.keymap.set("n", "<leader>[", "<cmd>tabm -1<cr>")
vim.keymap.set("n", "<leader>tn", "<cmd>tabnew<cr>")
vim.keymap.set("n", "<leader>tr", ":Tabby rename_tab ")

-- Windows
vim.keymap.set("n", "<leader>l", "<C-w><Right>")
vim.keymap.set("n", "<leader>h", "<C-w><Left>")
vim.keymap.set("n", "<leader>k", "<C-w><Up>")
vim.keymap.set("n", "<leader>j", "<C-w><Down>")
vim.keymap.set("n", "<leader>L", "<C-w>L")
vim.keymap.set("n", "<leader>H", "<C-w>H")
vim.keymap.set("n", "<leader>K", "<C-w>K")
vim.keymap.set("n", "<leader>J", "<C-w>J")

-- Buffers
vim.keymap.set("n", "<leader>bd", "<cmd>bd<cr>")

-- LSP
vim.keymap.set("n", "<leader>fo", vim.lsp.buf.format, {})
vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>re", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>i", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, {})
