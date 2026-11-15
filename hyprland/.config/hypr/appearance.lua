hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 10,
		border_size = 1,
		col = {
			active_border = {
				colors = { "rgba(33ccffee)", "rgba(00ff99ee)" },
				angle = 45,
			},
			inactive_border = "rgba(595959aa)",
		},
		resize_on_border = true,
		allow_tearing = false,
		layout = "dwindle",
	},
})
hl.config({
	decoration = {
		rounding = 10,
		rounding_power = 2,
		active_opacity = 1.0,
		inactive_opacity = 1.0,
		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = "rgba(1a1a1aee)",
		},
		blur = {
			enabled = false,
			size = 3,
			passes = 1,
			vibrancy = 0.1696,
		},
	},
})
-- TODO(hyprvalidate convert): 'animations.enabled' = 'no' doesn't confidently match its expected type (boolean); 'animations.bezier' is not a known Hyprland config key; 'animations.bezier' is not a known Hyprland config key; 'animations.bezier' is not a known Hyprland config key; 'animations.bezier' is not a known Hyprland config key; 'animations.bezier' is not a known Hyprland config key; 'animations.animation' is not a known Hyprland config key; 'animations.animation' is not a known Hyprland config key; 'animations.animation' is not a known Hyprland config key; 'animations.animation' is not a known Hyprland config key; 'animations.animation' is not a known Hyprland config key; 'animations.animation' is not a known Hyprland config key; 'animations.animation' is not a known Hyprland config key; 'animations.animation' is not a known Hyprland config key; 'animations.animation' is not a known Hyprland config key; 'animations.animation' is not a known Hyprland config key; 'animations.animation' is not a known Hyprland config key; 'animations.animation' is not a known Hyprland config key; 'animations.animation' is not a known Hyprland config key; 'animations.animation' is not a known Hyprland config key; 'animations.animation' is not a known Hyprland config key; 'animations.animation' is not a known Hyprland config key; 'animations.animation' is not a known Hyprland config key (hyprland.conf line 149)
hl.config({
	animations = {
		enabled = false,
	},
})
hl.config({
	dwindle = {
		preserve_split = true,
	},
})
hl.config({
	master = {
		new_status = "master",
	},
})
hl.config({
	misc = {
		force_default_wallpaper = 1,
		disable_hyprland_logo = false,
	},
})
