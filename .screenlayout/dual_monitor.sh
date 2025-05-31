#!/bin/sh
xrandr \
  --output HDMI-0 --off \
  --output DP-4 --mode 2560x1440 --pos 0x0 --rotate normal \
  --output DP-0 --primary \
  --mode 1920x1080 --pos 2560x0 --rate 144 --rotate normal \
  --output DP-1 --off \
  --output DP-2 --off \
  --output DP-3 --off \
  --output DP-5 --off

source $HOME/scripts/wallpaper.sh
# feh --no-xinerama --bg-fill ${wallpaper_image}

