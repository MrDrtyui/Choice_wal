# These lines need to be entered into the fish config. drtyui

# Last_patch
set last_wall (cat ~/.cache/last_wallpaper)

# Wal
wal -i $last_wall -n >/dev/null 2>&1

# Art
sh ../crunchbang-mini

alias n="nvim"
alias changewall="../change-wall.sh"
