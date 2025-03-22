local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- wezterm.font({ family = "Fire Code Nerd Font" })
wezterm.font({ family = "JetBrains Mono" })
config.font_size = 17
-- config.font = wezterm.font { family = 'Fira Code Nerd Font', weight = 'Bold'},
config.automatically_reload_config = true
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.adjust_window_size_when_changing_font_size = false
config.harfbuzz_features = { "calt=0" }
config.max_fps = 120
config.enable_kitty_graphics = true
config.window_close_confirmation = "NeverPrompt"
-- config.window_background_opacity = 0.90
-- config.macos_window_background_blur = 12
config.audible_bell = "Disabled"

config.window_padding = {
	left = 18,
	right = 15,
	top = 20,
	bottom = 5,
}

-- Key bindings reload config
config.keys = {
	{
		key = "r",
		mods = "CMD|SHIFT",
		action = wezterm.action.ReloadConfiguration,
	},
}

config.initial_cols = 180
config.initial_rows = 50

-- Key bindings delete word
config.keys = {
	{
		key = "LeftArrow",
		mods = "OPT",
		action = wezterm.action({ SendString = "\x1bb" }),
	},
	{
		key = "RightArrow",
		mods = "OPT",
		action = wezterm.action({ SendString = "\x1bf" }),
	},
}

-- Configs
-- Add Custom Color Scheme
-- config.color_scheme = "Gruvbox Dark, Hard (base16)"
-- config.color_scheme = 'Gruvbox dark, medium (base16)'
-- config.color_scheme = "Catppuccin Macchiato"
-- config.colors = {
-- background = "#12151B", -- lighter gray
-- background = "#0D0D0D", -- darker gray
--    background = "#000", -- pure black
--    cursor_bg = "#9B96B5",
-- cursor_fg = "#1a1a1e",
-- cursor_border = "#9B96B5",
-- }

-- local force_reverse_video_cursor = true
config.colors = {
	foreground = "#dcd7ba",
	background = "#1f1f28",

	cursor_bg = "#c8c093",
	cursor_fg = "#c8c093",
	cursor_border = "#c8c093",

	selection_fg = "#c8c093",
	selection_bg = "#2d4f67",

	scrollbar_thumb = "#16161d",
	split = "#16161d",

	ansi = { "#090618", "#c34043", "#76946a", "#c0a36e", "#7e9cd8", "#957fb8", "#6a9589", "#c8c093" },
	brights = { "#727169", "#e82424", "#98bb6c", "#e6c384", "#7fb4ca", "#938aa9", "#7aa89f", "#dcd7ba" },
	indexed = { [16] = "#ffa066", [17] = "#ff5d62" },
}

return config
