#!/bin/sh

xrandr --output DP-4 --primary
#~/scripts/set-custom-res.sh 1920 1080 143

xrandr \
  --output HDMI-0 --mode 1920x1080 --pos 1008x0 --rotate normal \
  --output DP-0 --mode 1920x1080 --rate 144 --pos 1920x1080 --rotate normal \
  --output DP-1 --off \
  --output DP-2 --off \
  --output DP-3 --off \
  --output DP-4 --mode 1920x1080 --pos 0x1080 \
  --output DP-5 --off

source $HOME/scripts/wallpaper.sh
feh --no-xinerama --bg-fill ${wallpaper_image}
#feh ${wallpaper_image}
