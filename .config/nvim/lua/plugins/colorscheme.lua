return {
	"rose-pine/neovim",
	lazy = false,
	priority = 1000,
	config = function()
		require("rose-pine").setup({
			variant = "main",
			palette = {
				main = {
					rose = "#3e8fb0",
					pine = "#ea9a97",
				},
			},
		})

		vim.cmd("colorscheme rose-pine")
	end,
}
