#!/usr/bin/env bash

waybar &
wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &
dunst --daemon &
swww-daemon &
swww img ~/Wallpapers/gruvbox.png &
nm-applet --indicator &
