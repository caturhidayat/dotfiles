return {
  "catppuccin/nvim",
  name = "catppuccin",
  opts = {
    flavour = "frappe",
    -- opsi lain
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme("catppuccin")
  end,
}
