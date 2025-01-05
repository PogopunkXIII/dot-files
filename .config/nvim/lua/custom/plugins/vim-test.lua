return {
	"vim-test/vim-test",
	dependencies = {
		"preservim/vimux",
	},
	vim.keymap.set("n", "<leader>t", "<cmd>TestNearest<CR>", { desc = "Run test nearest the cursor" }),
	vim.keymap.set("n", "<leader>T", "<cmd>TestFile<CR>", { desc = "Runs the entire test file" }),
	vim.keymap.set("n", "<leader>a", "<cmd>TestSuite<CR>", { desc = "Runs entire test suite" }),
	vim.keymap.set("n", "<leader>l", "<cmd>TestLast<CR>", { desc = "Runs last test ran" }),
	-- vim.keymap.set("n", "<leader>g", "<cmd>TestVisit<CR>", { desc = "navigate to the last test file that was run" }),

	vim.cmd("let test#strategy = 'vimux'"),
}
