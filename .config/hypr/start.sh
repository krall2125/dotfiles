#!/usr/bin/env bash

waybar &
wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &
mako &
swww-daemon &
swww img ~/Wallpapers/alexcirce.png &
nm-applet --indicator &
doas kanata -c ~/.config/kanata/config.kbd &
/usr/lib/xdg-desktop-portal-hyprland &
