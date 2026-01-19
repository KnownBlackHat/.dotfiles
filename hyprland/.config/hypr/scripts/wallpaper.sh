#!/bin/bash
hyprctl notify 5 5000 "rgb(00FF00)" "initializing new wallpapers..."
# wait for hyprpaper IPC
until hyprctl hyprpaper listloaded >/dev/null 2>&1; do
  sleep 0.2
done

# clear previous wallpapers (IMPORTANT)
hyprctl hyprpaper unload all

MONITORS=$(hyprctl monitors | awk '/^Monitor/ {print $2}')

for M in $MONITORS; do
  SAFE_M=$(echo "$M" | tr -cd 'A-Za-z0-9_-')

  URL=$(curl -s "https://wallhaven.cc/api/v1/search?q=blue+lock&sorting=random" \
    | jq -r '.data[0].path')

  FILE="$HOME/.cache/wallhaven-$SAFE_M.jpg"
  curl -s "$URL" -o "$FILE"

  hyprctl hyprpaper preload "$FILE"
  hyprctl hyprpaper wallpaper "$M,$FILE"
done

