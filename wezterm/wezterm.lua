local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.initial_cols = 120
config.initial_rows = 28

config.font_size = 10

config.default_prog = { 'nu' }
config.enable_shell_integration = true

config.adjust_window_size_when_changing_font_size = false

-- color_scheme = 'termnial.sexy'
config.color_scheme = 'Catppuccin Mocha'
config.enable_tab_bar = false
config.font_size = 10.0
config.font = wezterm.font('FiraCode Nerd Font Propo')

config.window_decorations = 'TITLE'
config.window_background_opacity = 1.00

config.keys = {
	{
		key = 'q',
		mods = 'CTRL',
		action = wezterm.action.ToggleFullScreen,
	},
}

config.mouse_bindings = {
	  -- Ctrl-click will open the link under the mouse cursor
  {
    event = { Up = { streak = 1, button = 'Left' } },
    mods = 'CTRL',
    action = wezterm.action.OpenLinkAtMouseCursor,
  },
}

return config
