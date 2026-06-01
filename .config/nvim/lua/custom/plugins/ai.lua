-- AI plugins: GitHub Copilot backend + CopilotChat
return {
	-- Copilot backend (no inline suggestions — chat plugins only)
	{
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

	-- Copilot chat interface
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		lazy = false,
		dependencies = {
			"zbirenbaum/copilot.lua",
			"nvim-lua/plenary.nvim",
		},
		build = "make tiktoken",
		opts = {
			-- This is actually sonnet 4.6, but the backend still calls it 3.5
			model = "claude-3.5-sonnet",
			window = {
				layout = "vertical",
				width = 0.4,
			},
		},
		keys = {
			{ "<leader>cc", "<cmd>CopilotChatToggle<cr>", desc = "[C]opilot [C]hat toggle" },
			{ "<leader>cm", "<cmd>CopilotChatModels<cr>", desc = "[C]opilot [M]odels" },
			{ "<leader>ce", "<cmd>CopilotChatExplain<cr>", mode = { "n", "v" }, desc = "[C]opilot [E]xplain" },
			{ "<leader>cf", "<cmd>CopilotChatFix<cr>", mode = { "n", "v" }, desc = "[C]opilot [F]ix" },
			{ "<leader>cr", "<cmd>CopilotChatReset<cr>", desc = "[C]opilot [R]eset chat" },
			{
				"<leader>cq",
				function()
					local input = vim.fn.input("Quick chat: ")
					if input ~= "" then
						require("CopilotChat").ask(input)
					end
				end,
				desc = "[C]opilot [Q]uick chat",
			},
			{ "<leader>cpr", "<cmd>CopilotChatReview<cr>", mode = { "n", "v" }, desc = "[C]opilot [P]rompt [R]eview" },
			{ "<leader>cpt", "<cmd>CopilotChatTests<cr>", mode = { "n", "v" }, desc = "[C]opilot [P]rompt [T]ests" },
		},
	},
}
