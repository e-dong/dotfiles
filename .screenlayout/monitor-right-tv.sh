#!/bin/sh
xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal \
      --output DP-1 --mode 3840x2160 --scale '0.4x0.4' --pos 1920x0 --rotate normal --output HDMI-1
