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
					{
						section = "terminal",
						cmd = "ascii-image-converter ~/.config/icons/synthwave-sun.png -d 60,30 -C -b --dither",
						height = 30,
						padding = 1,
					},
					{ section = "keys", padding = 1 },
					{
						icon = " ",
						title = "Recent Files",
						section = "recent_files",
						limit = 10,
						indent = 2,
						padding = 1,
					},
					{ section = "startup" },
				},
			},
		},
	},
}
