hl.bind("SUPER + SHIFT + N", hl.dsp.exec_cmd("hyprshade toggle blue-light-filter"))
hl.bind("SUPER + Return", hl.dsp.exec_cmd("alacritty"))
hl.bind("SUPER + SHIFT + Q", hl.dsp.window.close())
hl.bind("SUPER + SHIFT + Escape", hl.dsp.exit())
hl.bind("SUPER + E", hl.dsp.exec_cmd("dolphin"))
hl.bind("SUPER + V", hl.dsp.window.float())
hl.bind("SUPER + Space", hl.dsp.exec_cmd("rofi -show drun"))
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind("SUPER + P", hl.dsp.window.pseudo())

hl.workspace_rule({ workspace = "1", monitor = "DP-1", default = true })
hl.workspace_rule({ workspace = "2", monitor = "eDP-1", default = true })
hl.workspace_rule({ workspace = "3", monitor = "HDMI-A-1", default = true })
hl.bind("ALT + 1", hl.dsp.focus({ monitor = "DP-1" }))
hl.bind("ALT + 2", hl.dsp.focus({ monitor = "eDP-1" }))
hl.bind("ALT + 3", hl.dsp.focus({ monitor = "HDMI-A-1" }))
hl.bind("ALT + SHIFT + 1", hl.dsp.workspace.move({ monitor = "DP-1" }))
hl.bind("ALT + SHIFT + 2", hl.dsp.workspace.move({ monitor = "eDP-1" }))
hl.bind("ALT + SHIFT + 3", hl.dsp.workspace.move({ monitor = "HDMI-A-1" }))

function Pprint(text)
	hl.notification.create({
		text = text,
		timeout = 3000, -- milliseconds
		icon = "info", -- none, warn, info, hint, err, ok, confused
		font_size = 15,
	})
end

-- Cycle to recent monitor
local current_monitor = nil
local previous_monitor = nil

hl.on("hyprland.start", function()
	current_monitor = hl.get_active_monitor().name
end)

hl.on("monitor.focused", function(monitor)
	if not current_monitor then
		return
	end
	if monitor.name ~= current_monitor.name then
		previous_monitor = current_monitor
		current_monitor = monitor.name
	end
end)

hl.bind("ALT + SHIFT + TAB", function()
	if previous_monitor then
		hl.dispatch(hl.dsp.focus({ monitor = previous_monitor }))
	end
end)

-- Cycle through all workspace in active monitor
hl.bind("ALT + TAB", function()
	local monitor = hl.get_active_monitor()
	local current = hl.get_active_workspace()

	local ids = {}
	for _, ws in ipairs(hl.get_workspaces()) do
		if ws.monitor == monitor and ws.special ~= true then
			table.insert(ids, ws.id)
		end
	end

	if #ids == 0 then
		return
	end

	table.sort(ids)

	-- find the current workspace in the list
	local index = 1
	for i, id in ipairs(ids) do
		if not current then
			return
		end
		if id == current.id then
			index = i
			break
		end
	end

	local next_id = ids[index % #ids + 1]
	hl.dispatch(hl.dsp.focus({ workspace = tostring(next_id) }))
end)

hl.bind("SUPER + SHIFT + R", hl.dsp.exec_cmd("pkill mpvpaper;~/.config/hypr/scripts/wallpaper.sh"))
hl.bind("SUPER + Print", hl.dsp.exec_cmd('grim -g "$(slurp)" -t png - | wl-copy -t image/png'))
hl.bind(
	"SUPER + Tab",
	hl.dsp.focus({
		workspace = "previous",
	})
)

hl.bind("SUPER + SHIFT + L", hl.dsp.window.resize({ x = 30, y = 0, relative = true }))
hl.bind("SUPER + SHIFT + H", hl.dsp.window.resize({ x = -30, y = 0, relative = true }))
hl.bind("SUPER + SHIFT + K", hl.dsp.window.resize({ x = 0, y = -30, relative = true }))
hl.bind("SUPER + SHIFT + J", hl.dsp.window.resize({ x = 0, y = 30, relative = true }))

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
