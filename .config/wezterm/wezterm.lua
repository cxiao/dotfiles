local wezterm = require 'wezterm';
return {
	-- Basic appearance stuff
	-- Font
	font_size = 11.0,
	dpi = 94.0,
	font = wezterm.font("JetBrains Mono"),
	font_antialias = "Greyscale",

	-- Color
	color_scheme = "OneHalfDark",

	-- Window
	window_background_opacity = 0.98,
	window_padding = {
		left = 15,
		-- This will become the scrollbar width if you have enabled the scrollbar!
		right = 15,
		top = 15,
		bottom = 15
	},

	-- Tabs
	hide_tab_bar_if_only_one_tab = true,

	-- Keybindings
	leader = {key = " ", mods = "CTRL", timeout_milliseconds = 1000},
	keys = {
		-- Panes
		{
			key = "/", mods = "LEADER",
			action = wezterm.action{SplitHorizontal = {domain = "CurrentPaneDomain"}}
		},
		{
			key = "-", mods = "LEADER",
			action = wezterm.action{SplitVertical = {domain = "CurrentPaneDomain"}}
		},
		{
			key = "h", mods = "LEADER",
			action = wezterm.action{ActivatePaneDirection = "Left"}
		},
		{
			key = "j", mods = "LEADER",
			action = wezterm.action{ActivatePaneDirection = "Down"}
		},
		{
			key = "k", mods = "LEADER",
			action = wezterm.action{ActivatePaneDirection = "Up"}
		},
		{
			key = "l", mods = "LEADER",
			action = wezterm.action{ActivatePaneDirection = "Right"}
		},
		{
			key = "h", mods = "CTRL",
			action = wezterm.action{ActivatePaneDirection = "Left"}
		},
		{
			key = "j", mods = "CTRL",
			action = wezterm.action{ActivatePaneDirection = "Down"}
		},
		{
			key = "k", mods = "CTRL",
			action = wezterm.action{ActivatePaneDirection = "Up"}
		},
		{
			key = "l", mods = "CTRL",
			action = wezterm.action{ActivatePaneDirection = "Right"}
		},
		{
			key = "z", mods = "LEADER",
			action = "TogglePaneZoomState",
		},
		-- Tabs
		{
			key = "c", mods = "LEADER",
			action = wezterm.action{SpawnTab = "CurrentPaneDomain"},
		},
		{
			key = "x", mods = "LEADER",
			action = wezterm.action{CloseCurrentTab={confirm=false}},
		},
		{
			key = "n", mods = "LEADER",
			action = wezterm.action{ActivateTabRelative = 1},
		},
		{
			key = "p", mods = "LEADER",
			action = wezterm.action{ActivateTabRelative = -1},
		},
	},

	-- Multiplexing
	unix_domains = {
		{
			name = "main",
			-- If true, connect to this unix domain when `wezterm` is started
			connect_automatically = false,

			-- The path to the socket.  If unspecified, a resonable default
			-- value will be computed.

			-- socket_path = "/some/path",

			-- If true, do not attempt to start this server if we try and fail to
			-- connect to it.

			-- no_serve_automatically = true,

			-- If true, bypass checking for secure ownership of the
			-- socket_path.  This is not recommended on a multi-user
			-- system, but is useful for example when running the
			-- server inside a WSL container but with the socket
			-- on the host NTFS volume.

			-- skip_permissions_check = false,

		},
	},

	-- Misc
	-- enable_wayland = true,
	window_close_confirmation = "NeverPrompt",
}
