-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- local my_default = wezterm.color.get_default_colors()
-- my_default.cursor_bg = '#abcbd3'
-- my_default.cursor_border ='#abcbd3'
-- config.color_schemes = {
--   ['My Default'] = my_default
-- }
--
-- config.color_scheme = 'My Default'

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'
config.color_scheme = "Catppuccin Mocha"
config.enable_tab_bar = false
config.font = wezterm.font("FiraCode Nerd Font Mono")
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.keys = {
  -- Turn off the default CMD-m Hide action, allowing CMD-m to
  -- be potentially recognized and handled by the tab
  {
    key = 'Enter',
    mods = 'ALT',
    action = wezterm.action.DisableDefaultAssignment,
  },
  {
    key = 'F11',
    action = wezterm.action.ToggleFullScreen,
  },
  --{
   -- Key = "\\",
   -- mods = 'CTRL',
  --  action = wezterm.action.DisableDefaultAssignment
--  }
}


-- and finally, return the configuration to wezterm
return config

