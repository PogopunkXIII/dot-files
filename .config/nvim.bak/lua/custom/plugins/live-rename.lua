return {
	"saecki/live-rename.nvim",
	config = function()
		require("live-rename").setup({})

		local live_rename = require("live-rename")
		vim.keymap.set("n", "<leader>r", live_rename.rename, { desc = "rename variable with highlighting" })
	end,
}
