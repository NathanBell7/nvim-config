require("nvim-tree").setup()
local api = require("nvim-tree.api")
vim.keymap.set("n", "<leader>t", api.node.open.tab) 
vim.keymap.set("n", "<leader>pv", api.tree.toggle) 
vim.keymap.set("n","<leader><Right>", "gt")
vim.keymap.set("n","<leader><Left>", "gT")
vim.keymap.set("n","<leader>d", ":noh")



