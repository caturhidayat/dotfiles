return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	enabled = true,
	lazy = false,
	name = "treesitter",
	priority = 1000,
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			--ensure_installed = { "lua", "javascript" },
      auto_install = true,
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
