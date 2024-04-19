local wezterm = require 'wezterm'

local config = wezterm.config_builder()
local act = wezterm.action

config.audible_bell = "Disabled"

config.color_scheme = "duskfox"
config.color_schemes = {
['duskfox'] = {
background = 'black',
}
}

config.font = wezterm.font "Fira Code"
config.font_size = 14.0

config.window_decorations = 'NONE'
config.window_close_confirmation = 'NeverPrompt'
config.enable_tab_bar = false


config.enable_wayland = false

config.keys = {
	{ key = 'Enter', mods = 'ALT',       action = act.SpawnTab 'CurrentPaneDomain' },
	{ key = 'v',     mods = 'ALT',       action = act.ActivateCopyMode },
	{ key = 't',     mods = 'ALT|SHIFT', action = wezterm.action.ShowLauncherArgs { flags = 'TABS' } },

	-- Panes
	{ key = 'w',     mods = 'ALT',       action = act.CloseCurrentPane({ confirm = true }) },
	{ key = 'h',     mods = 'ALT|SHIFT', action = wezterm.action.SplitPane { direction = 'Left', size = { Percent = 50 }, } },
	{ key = 'j',     mods = 'ALT|SHIFT', action = wezterm.action.SplitPane { direction = 'Down', size = { Percent = 50 }, } },
	{ key = 'k',     mods = 'ALT|SHIFT', action = wezterm.action.SplitPane { direction = 'Up', size = { Percent = 50 }, } },
	{ key = 'l',     mods = 'ALT|SHIFT', action = wezterm.action.SplitPane { direction = 'Right', size = { Percent = 50 }, } },
	{ key = 'h',	 mods = 'ALT', action = act.ActivatePaneDirection 'Left', },
	{ key = 'j',	 mods = 'ALT', action = act.ActivatePaneDirection 'Down', },
	{ key = 'k',	 mods = 'ALT', action = act.ActivatePaneDirection 'Up', },
	{ key = 'l',	 mods = 'ALT', action = act.ActivatePaneDirection 'Right', },

	-- Tabs
	{ key = 'q',     mods = 'ALT',       action = act.CloseCurrentTab({ confirm = true }) },
	{ key = '1',     mods = 'ALT',       action = act.ActivateTab(0) },
	{ key = '2',     mods = 'ALT',       action = act.ActivateTab(1) },
	{ key = '3',     mods = 'ALT',       action = act.ActivateTab(2) },
	{ key = '4',     mods = 'ALT',       action = act.ActivateTab(3) },
	{ key = '5',     mods = 'ALT',       action = act.ActivateTab(4) },

}

return config
