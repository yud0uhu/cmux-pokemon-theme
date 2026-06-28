#!/usr/bin/env bash
# Install the Pokémon Pikachu theme for cmux (Ghostty backend).
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Ghostty searches user themes in ~/.config/ghostty/themes
THEME_DIR="$HOME/.config/ghostty/themes"
# cmux loads its Ghostty config from Application Support
GHOSTTY_SUPPORT="$HOME/Library/Application Support/com.mitchellh.ghostty"
BG_DIR="$GHOSTTY_SUPPORT/backgrounds"
CONFIG="$GHOSTTY_SUPPORT/config.ghostty"

mkdir -p "$THEME_DIR" "$BG_DIR" "$GHOSTTY_SUPPORT"

# 1. Theme colors
cp "$REPO_DIR/themes/Pokemon Pikachu" "$THEME_DIR/Pokemon Pikachu"

# 2. Background image
cp "$REPO_DIR/backgrounds/pikachu.png" "$BG_DIR/pikachu.png"

# 3. Config (rewrite background-image path for this machine)
if [ -f "$CONFIG" ]; then
  cp "$CONFIG" "$CONFIG.bak.$(date +%s)"
  echo "Backed up existing config to $CONFIG.bak.*"
fi
sed "s|/CHANGE/ME/backgrounds/pikachu.png|$BG_DIR/pikachu.png|" \
  "$REPO_DIR/config.ghostty" > "$CONFIG"

echo "Installed. In cmux, run the 'reload_config' command (or press Cmd+Shift+,)."
