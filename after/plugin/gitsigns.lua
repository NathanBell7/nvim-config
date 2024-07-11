require("gitsigns").setup({
	on_attach = function(bufnr)
		local gitsigns = require("gitsigns")

		--hunk
		vim.keymap.set("n", "<leader>gsh", gitsigns.stage_hunk)
		vim.keymap.set("n", "<leader>guh", gitsigns.undo_stage_hunk)
		vim.keymap.set("n", "<leader>grh", gitsigns.reset_hunk)

		--buffer
		vim.keymap.set("n", "<leader>gsb", gitsigns.stage_buffer)
		vim.keymap.set("n", "<leader>gub", gitsigns.reset_buffer_index)
		vim.keymap.set("n", "<leader>grb", gitsigns.reset_buffer)

		--toggle
		vim.keymap.set("n", "<leader>gd", gitsigns.diffthis)
		vim.keymap.set("n", "<leader>gtd", gitsigns.toggle_deleted)
		vim.keymap.set("n", "<leader>gtb", gitsigns.toggle_current_line_blame)

		--navigation
		vim.keymap.set("n", "<leader>gn", gitsigns.prev_hunk)
		vim.keymap.set("n", "<leader>gp", gitsigns.next_hunk)
	end,
})
