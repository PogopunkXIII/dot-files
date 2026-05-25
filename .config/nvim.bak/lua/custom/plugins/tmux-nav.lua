return {
	"christoomey/vim-tmux-navigator",
	cmd = {
		"TmuxNavigateLeft",
		"TmuxNavigateDown",
		"TmuxNavigateUp",
		"TmuxNavigateRight",
		"TmuxNavigatePrevious",
		"TmuxNavigatorProcessList",
	},
	keys = {
		{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>", { desc = "Move to either left vim pane or tmux pany" } },
		{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>", { desc = "Move to either downard vim pane or tmux pany" } },
		{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>", { desc = "Move to either upward vim pane or tmux pany" } },
		{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>", { desc = "Move to either right vim pane or tmux pany" } },
		{ "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
	},
}
