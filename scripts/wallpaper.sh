#!/bin/bash
wallpaper_image=/home/eric/Pictures/backgrounds/digital_mountain_clouds.jpg
~/venv/tools/bin/python -m pywal -n -i ${wallpaper_image} --backend schemer2

#feh --no-xinerama --bg-scale ${wallpaper_image}
feh --bg-scale ${wallpaper_image}
