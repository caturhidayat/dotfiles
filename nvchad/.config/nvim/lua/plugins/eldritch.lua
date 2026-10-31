return {
  "eldritch-theme/eldritch.nvim",
  enable = true,
  lazy = false,
  priority = 1000,
  opts = {
    terminal_color = true,
    styles = {
      -- Style to be applied to different syntax groups
      -- Value is any valid attr-list value for `:help nvim_set_hl`
      comments = { italic = true },
      keywords = { italic = true },
      functions = {},
      variables = {},
      -- Background styles. Can be "dark", "transparent" or "normal"
      sidebars = "transparent", -- style for sidebars, see below
      floats = "normal", -- style for floating windows
    },
  },
}
