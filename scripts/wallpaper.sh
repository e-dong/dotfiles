#!/bin/bash
wallpaper_image="/home/eric/Pictures/backgrounds/6138367-art-stars-fantasy-magic-clouds-orginal-sky-scenery.jpg"
#~/Pictures/backgrounds/digital_mountain_clouds.jpg
~/venv/tools/bin/python -m pywal -n -i ${wallpaper_image} --backend schemer2

feh --no-xinerama --bg-scale ${wallpaper_image}
# feh --bg-scale ${wallpaper_image}
