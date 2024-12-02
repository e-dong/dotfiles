#!/bin/bash
# original values
width=1920
height=1080
dpi=96
nvidia-settings -a CurrentMetaMode="DPY-1: 1920x1080_144 @${width}x${height} +0+0 {ViewPortIn=${width}x${height}, ViewPortOut=1920x1080+0+0, ForceCompositionPipeline=On, ForceFullCompositionPipeline=On}"

# restore dpi
echo "Xft.dpi: $dpi" | xrdb
$HOME/scripts/wallpaper.sh
pkill dwm
pkill slstatus
