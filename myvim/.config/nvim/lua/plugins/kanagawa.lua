return {
	"rebelot/kanagawa.nvim",
	enabled = true,
	lazy = false,
	name = "kanagawa",
	priority = 1000,
	config = function()
		require("kanagawa").setup()
		vim.cmd("colorscheme kanagawa-wave")
	end,
}
