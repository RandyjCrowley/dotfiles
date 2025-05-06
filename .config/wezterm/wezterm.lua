local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- DEFAULT

config.color_scheme = "One Dark (Gogh)"

config.font = wezterm.font("Iosevka Term")

config.font_size = 21

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
}

return config
