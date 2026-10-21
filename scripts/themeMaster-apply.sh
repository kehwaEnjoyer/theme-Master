# . Reload Desktop Components
ACTIVE_DIR="${HOME}/.config/themeMaster/active"

hyprctl reload &>/dev/null
killall -SIGUSR1 waybar 2>/dev/null
# Push live color changes across all open Kitty terminal windows
kitty @ set-colors -a "${ACTIVE_DIR}/kitty.conf" 2>/dev/null || killall -SIGUSR1 kitty 2>/dev/null

echo "[SetTheme] Successfully switched to ${filename}"