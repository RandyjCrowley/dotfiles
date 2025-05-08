local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- DEFAULT

config.color_scheme = "One Dark (Gogh)"

config.font = wezterm.font("Iosevka Term")

config.font_size = 21

config.set_environment_variables = {
	PATH = "/opt/homebrew/bin:" .. os.getenv("PATH"),
}

-- KEYS

config.keys = {
	{
		key = "w",
		mods = "SUPER",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},

	{
		key = "d",
		mods = "SUPER",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},

	{
		key = "d",
		mods = "SUPER|SHIFT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},

	{
		key = "n",
		mods = "SUPER",
		action = wezterm.action.SpawnCommandInNewTab({ args = { "/opt/homebrew/bin/nvim", "." } }),
	},
	{
		key = "]",
		mods = "SUPER",
		action = wezterm.action.RotatePanes("Clockwise"),
	},
	{
		key = "[",
		mods = "SUPER",
		action = wezterm.action.RotatePanes("CounterClockwise"),
	},
	{
		key = "p",
		mods = "SUPER",
		action = wezterm.action.ActivateCommandPalette,
	},
}

return config
