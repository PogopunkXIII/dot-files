return {
	"nvimtools/none-ls.nvim",
	enabled = false,
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.diagnostics.eslint_d,
			},
		})
	end,
}
