language = "en-US"
region   = "-IT"

[appearance]
font_name = "Adwaita Mono"
scale_factor = 1.2
success_color = "#a3be8c"
warning_color = "#ebcb8b"
danger_color = "#bf616a"
text_color = "{{color7}}"
workspace_colors = [ "{{color2}}", "{{color3}}", "{{color4}}" ]

[appearance.primary_color]
base = "{{color1}}"
text = "{{color6}}"

[appearance.background_color]
base = "{{color0}}"
weak = "{{color5}}"
strong = "{{color6}}"

[modules]
left = [ [ "appLauncher", "FileManager", "Updates", "Workspaces" ] , "MediaPlayer"]
center = [ "WindowTitle", "Tempo" , "notifications" ]
right = [ "SystemInfo",[ "Tray", "Privacy", "Settings" ] ]

[media_player]
max_title_length = 50

[workspaces]
disable_special_workspaces = true

[updates]
check_cmd = "checkupdates; yay -Qua"
update_cmd = 'kitty -e bash -c "yay; echo Done - Press enter to exit; read" &'
interval = 3600

[[CustomModule]]
name = "appLauncher"
icon = "󱗼"
command = "$HOME/.config/scripts/wofi-rand"

[[CustomModule]]
name = "FileManager"
icon = ""
command = "dolphin ~"

[system_info]
indicators = [ "Cpu", "Memory", "DownloadSpeed", "UploadSpeed" ]

[system_info.memory]
format = "Fraction"

[notifications]
format = "%H:%M"
show_timestamps = true
show_bodies = true
# grouped = false           # (default) group notifications by app
# toast = true              # (default) enable toast popups
# toast_position = "TopRight"  # (default) "TopLeft", "TopRight", "BottomLeft", "BottomRight"
# toast_timeout = 5000      # (default) milliseconds before auto-dismiss
# toast_limit = 5           # (default) max concurrent toasts
# toast_max_height = 150    # (default) max height of toast cards in pixels
# blocklist = ["regex"]     # (default: []) suppress notifications from apps matching regex
