local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.window_decorations = "RESIZE"
config.color_scheme = "Gruvbox Dark (Gogh)"

config.window_background_opacity = 0.60
config.macos_window_background_blur = 20
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true

config.keys = {
	{
		key = "Enter",
		mods = "ALT",
		action = wezterm.action.DisableDefaultAssignment,
	},
}

config.animation_fps = 30

config.keys = {
	{
		key = "Enter",
		mods = "SHIFT",
		action = wezterm.action.SendString("\x1b[13;2u"),
	},
	{
		key = "a",
		mods = "CMD|SHIFT",
		action = wezterm.action.SpawnCommandInNewWindow({
			args = { "/Users/emilankerstjerne/.local/bin/vibe" },
		}),
	},
}

return config
