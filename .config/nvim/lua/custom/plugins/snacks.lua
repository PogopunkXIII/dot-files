return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			bigfile = { enabled = true },
			dashboard = { enabled = true },
			-- scroll = { enabled = true },
		},
	},
	{
		"folke/snacks.nvim",
		opts = {
			dashboard = {
				sections = {
					{ section = "header" },
					{
						pane = 2,
						section = "terminal",
						cmd = "ascii-image-converter ~/.config/icons/synthwave-sun.png -d 40,20 -C",
						height = 5,
						padding = 1,
					},
					{ section = "keys", gap = 1, padding = 1 },
					{
						pane = 2,
						icon = " ",
						title = "Recent Files",
						section = "recent_files",
						indent = 2,
						padding = 1,
					},
					{ section = "startup" },
				},
			},
		},
	},
}
