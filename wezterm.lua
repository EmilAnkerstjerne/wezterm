local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.window_decorations = "RESIZE"
config.color_scheme = "Gruvbox Dark (Gogh)"

config.window_background_opacity = 0.85
config.macos_window_background_blur = 50
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true

return config
