local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.default_prog = {'wsl', '-d', 'Ubuntu', '--cd', '~' }

config.font_size = 12
config.line_height = 1.2
config.font = wezterm.font('Cascadia Code')

config.font_rules = {
    {
      italic = true,
      font = wezterm.font('Cascadia Code', {
        italic = true,
      }),
    },
}

config.color_scheme = 'Synthwave (Gogh)'

config.cursor_blink_rate = 0
config.window_decorations = 'RESIZE'
config.macos_window_background_blur = 40

config.max_fps = 120
config.prefer_egl = true

config.initial_rows=23
config.initial_cols=125

return config
