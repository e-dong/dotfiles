#!/bin/sh
xrandr \
  --output HDMI-0 --mode 1920x1080 --pos 0x180 --rotate normal \
  --output DP-0 --primary --mode 2560x1440 --pos 1920x0 --rotate normal \
  --output DP-1 --off \
  --output DP-2 --mode 1920x1080 --pos 4480x180 --rotate normal \
  --output DP-3 --off \
  --output DP-4 --off \
  --output DP-5 --off

source $HOME/scripts/wallpaper.sh
# feh --no-xinerama --bg-fill ${wallpaper_image}
feh --bg-fill ${wallpaper_image}

