return {
	{
		enabled = false,
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				suggestion = { enabled = false },
				panel = { enabled = false },
			})
		end,
	},
	{
		-- OLD, usinmg copilot.lua
		"github/copilot.vim",
		enabled = false,
		config = function()
			-- vim.keymap.set("n", "<leader>co", copilot.panel(), { desc = "Open copilot suggestions panel" })
			vim.keymap.set("i", "<C-c>", 'copilot#Accept("")', {
				desc = "Accept github copilot suggestion",
				expr = true,
				replace_keycodes = false,
			})

			vim.g.copilot_no_tab_map = true
		end,
	},
	{
		-- USED FOR NVIM CMP, NOT USED FOR BLINK
		enabled = false,
		"zbirenbaum/copilot-cmp",
		config = function()
			require("copilot_cmp").setup()
		end,
	},
}
