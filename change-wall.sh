#in/bash

WALL_DIR="$HOME/Hyprland-Custom-Configuration/Wallpaper"

mapfile -t FILES < <(find "$WALL_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \))
FILENAMES=()
for f in "${FILES[@]}"; do
  FILENAMES+=("$(basename "$f")")
done

SELECTED_NAME=$(printf '%s\n' "${FILENAMES[@]}" | wofi -s ~/.config/wofi/menu.css --dmenu --prompt="Select wallpaper:")

# Wofi
if [ -z "$SELECTED_NAME" ]; then
  exit 0
fi

for f in "${FILES[@]}"; do
  if [ "$(basename "$f")" == "$SELECTED_NAME" ]; then
    SELECTED="$f"
    break
  fi
done

if [ -z "$SELECTED" ]; then
  exit 1
fi

wal -i "$SELECTED" -n >/dev/null 2>&1

sh ./crunchbang-mini

echo "$SELECTED" >~/.cache/last_wallpaper
