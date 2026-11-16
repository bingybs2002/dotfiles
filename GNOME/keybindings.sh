#!/usr/bin/env bash
# GNOME keybindings:
#   Super+1..9        open/focus the Nth app on the dock
#   Alt+1..9, Alt+0   switch to workspace 1..10
#   Shift+Alt+1..0    move current window to workspace 1..10
set -euo pipefail

WM=org.gnome.desktop.wm.keybindings
SHELL_KB=org.gnome.shell.keybindings

# 10 fixed workspaces so every key has a target
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 10

# Super+N -> dock apps (GNOME only supports 1-9)
for i in $(seq 1 9); do
    gsettings set "$SHELL_KB" switch-to-application-$i "['<Super>$i']"
done

# Alt+N -> switch workspace, Shift+Alt+N -> move window (0 = workspace 10)
for i in $(seq 1 10); do
    k=$(( i % 10 ))
    gsettings set "$WM" switch-to-workspace-$i "['<Alt>$k']"
    gsettings set "$WM" move-to-workspace-$i "['<Shift><Alt>$k']"
done

echo "GNOME keybindings applied."
