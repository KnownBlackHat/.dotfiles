hl.bind("SUPER + SHIFT + N", hl.dsp.exec_cmd("hyprshade toggle blue-light-filter"))
hl.bind("SUPER + Return", hl.dsp.exec_cmd("alacritty"))
hl.bind("SUPER + SHIFT + Q", hl.dsp.window.close())
hl.bind("SUPER + SHIFT + Escape", hl.dsp.exit())
hl.bind("SUPER + E", hl.dsp.exec_cmd("dolphin"))
hl.bind("SUPER + V", hl.dsp.window.float())
hl.bind("SUPER + Space", hl.dsp.exec_cmd("rofi -show drun"))
-- TODO(hyprvalidate convert): unrecognized old dispatcher 'pseudo' - no confident rename, convert manually (hyprland.conf line 255)
-- TODO(hyprvalidate convert): 'fullscreen' has no modeled argument shape yet (hyprland.conf line 257)
-- TODO(hyprvalidate convert): unrecognized old dispatcher 'movecurrentworkspacetomonitor' - no confident rename, convert manually (hyprland.conf line 258)
-- TODO(hyprvalidate convert): unrecognized old dispatcher 'movecurrentworkspacetomonitor' - no confident rename, convert manually (hyprland.conf line 259)
-- TODO(hyprvalidate convert): unrecognized old dispatcher 'movecurrentworkspacetomonitor' - no confident rename, convert manually (hyprland.conf line 260)
-- TODO(hyprvalidate convert): unrecognized old dispatcher 'focusmonitor' - no confident rename, convert manually (hyprland.conf line 261)
-- TODO(hyprvalidate convert): unrecognized old dispatcher 'focusmonitor' - no confident rename, convert manually (hyprland.conf line 262)
-- TODO(hyprvalidate convert): unrecognized old dispatcher 'focusmonitor' - no confident rename, convert manually (hyprland.conf line 263)
hl.bind("SUPER + SHIFT + R", hl.dsp.exec_cmd("pkill mpvpaper;~/.config/hypr/scripts/wallpaper.sh"))
hl.bind("SUPER + Print", hl.dsp.exec_cmd("grim -g $(slurp) -t png - | wl-copy -t image/png"))
hl.bind(
	"SUPER + Tab",
	hl.dsp.focus({
		workspace = "previous",
	})
)
-- TODO(hyprvalidate convert): unrecognized old dispatcher 'resizeactive' - no confident rename, convert manually (hyprland.conf line 270)
-- TODO(hyprvalidate convert): unrecognized old dispatcher 'resizeactive' - no confident rename, convert manually (hyprland.conf line 271)
-- TODO(hyprvalidate convert): unrecognized old dispatcher 'resizeactive' - no confident rename, convert manually (hyprland.conf line 272)
-- TODO(hyprvalidate convert): unrecognized old dispatcher 'resizeactive' - no confident rename, convert manually (hyprland.conf line 273)
hl.bind(
	"SUPER + H",
	hl.dsp.focus({
		direction = "l",
	})
)
hl.bind(
	"SUPER + L",
	hl.dsp.focus({
		direction = "r",
	})
)
hl.bind(
	"SUPER + K",
	hl.dsp.focus({
		direction = "u",
	})
)
hl.bind(
	"SUPER + J",
	hl.dsp.focus({
		direction = "d",
	})
)
hl.bind(
	"SUPER + 1",
	hl.dsp.focus({
		workspace = "1",
	})
)
hl.bind(
	"SUPER + 2",
	hl.dsp.focus({
		workspace = "2",
	})
)
hl.bind(
	"SUPER + 3",
	hl.dsp.focus({
		workspace = "3",
	})
)
hl.bind(
	"SUPER + 4",
	hl.dsp.focus({
		workspace = "4",
	})
)
hl.bind(
	"SUPER + 5",
	hl.dsp.focus({
		workspace = "5",
	})
)
hl.bind(
	"SUPER + 6",
	hl.dsp.focus({
		workspace = "6",
	})
)
hl.bind(
	"SUPER + 7",
	hl.dsp.focus({
		workspace = "7",
	})
)
hl.bind(
	"SUPER + 8",
	hl.dsp.focus({
		workspace = "8",
	})
)
hl.bind(
	"SUPER + 9",
	hl.dsp.focus({
		workspace = "9",
	})
)
hl.bind(
	"SUPER + 0",
	hl.dsp.focus({
		workspace = "10",
	})
)
hl.bind(
	"SUPER + SHIFT + 1",
	hl.dsp.window.move({
		workspace = "1",
		follow = true,
	})
)
hl.bind(
	"SUPER + SHIFT + 2",
	hl.dsp.window.move({
		workspace = "2",
		follow = true,
	})
)
hl.bind(
	"SUPER + SHIFT + 3",
	hl.dsp.window.move({
		workspace = "3",
		follow = true,
	})
)
hl.bind(
	"SUPER + SHIFT + 4",
	hl.dsp.window.move({
		workspace = "4",
		follow = true,
	})
)
hl.bind(
	"SUPER + SHIFT + 5",
	hl.dsp.window.move({
		workspace = "5",
		follow = true,
	})
)
hl.bind(
	"SUPER + SHIFT + 6",
	hl.dsp.window.move({
		workspace = "6",
		follow = true,
	})
)
hl.bind(
	"SUPER + SHIFT + 7",
	hl.dsp.window.move({
		workspace = "7",
		follow = true,
	})
)
hl.bind(
	"SUPER + SHIFT + 8",
	hl.dsp.window.move({
		workspace = "8",
		follow = true,
	})
)
hl.bind(
	"SUPER + SHIFT + 9",
	hl.dsp.window.move({
		workspace = "9",
		follow = true,
	})
)
hl.bind(
	"SUPER + SHIFT + 0",
	hl.dsp.window.move({
		workspace = "10",
		follow = true,
	})
)
hl.bind("SUPER + mouse:272", hl.dsp.window.drag())
hl.bind("SUPER + mouse:273", hl.dsp.window.resize())
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), {
	repeating = true,
	locked = true,
})
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), {
	repeating = true,
	locked = true,
})
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), {
	repeating = true,
	locked = true,
})
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), {
	repeating = true,
	locked = true,
})
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), {
	repeating = true,
	locked = true,
})
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), {
	repeating = true,
	locked = true,
})
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), {
	locked = true,
})
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), {
	locked = true,
})
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), {
	locked = true,
})
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), {
	locked = true,
})
