-- lua/plugins/rose-pine.lua
return {
	"rose-pine/neovim",
	name = "rose-pine",
  enable = false,
	config = function()
		vim.cmd("colorscheme rose-pine")
	end
}

