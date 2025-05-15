# Terminal Colors Changer

This project allows you to dynamically change your terminal color scheme based on the wallpaper you select, using `wal`, `fish shell`, and `wofi`.

---

## Requirements

- Fish shell  
- pywal (`wal`)  
- wofi  

Make sure all are installed and available in your system PATH.

---

## Installation

1. Clone the repository:

```bash
git clone https://github.com/yourusername/yourproject.git
cd yourproject
```

## Configuration

Add the following lines to your Fish config file (~/.config/fish/config.fish):

```fish
set last_wall (cat ~/.cache/last_wallpaper)
wal -i $last_wall -n >/dev/null 2>&1
sh /path/to/crunchbang-mini

alias n="nvim"
alias changewall="/path/to/change-wall.sh"
```

Select your patch with images in the choice_wall file.

## Usage

Run the function with your wallpapers directory:

```bash
choice_wall
```

This will open a wofi file picker to select a wallpaper. Terminal colors will update automatically.

