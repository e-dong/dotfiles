#!/bin/sh
xrandr --output DP-1 --off \
    --output HDMI-1 --off \
    --output DVI-I-3-2 --primary --mode 1920x1080 --pos 0x0 --rotate normal \
    --output DVI-I-2-1 --mode 1920x1080 --pos 1920x0 --rotate normal --rate 120 \
    --output eDP-1 --mode 1920x1080 --pos 3840x0 --rotate normal

sleep 1
#xrandr --output eDP-1 --off 

source $HOME/.local/theme/wallpaper.sh
wal -i ${wallpaper_image}


