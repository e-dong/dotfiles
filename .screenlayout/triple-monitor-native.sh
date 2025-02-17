#!/bin/sh
xrandr \
  --output HDMI-0 --mode 1920x1080 --pos 1754x0 --rotate normal \
  --output DP-0 --primary --mode 1920x1080 --rate 144 --pos 2560x1080 --rotate normal \
  --output DP-1 --off \
  --output DP-2 --off \
  --output DP-3 --off \
  --output DP-4 --mode 2560x1440 --pos 0x1080 --rotate normal \
  --output DP-5 --off

source $HOME/scripts/wallpaper.sh
# feh --no-xinerama --bg-fill ${wallpaper_image}
feh --bg-fill ${wallpaper_image}

