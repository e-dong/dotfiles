#!/bin/bash
SCRIPTS_HOME=$HOME/scripts

width=${1:-1920}
height=${2:-1080}
dpi=${3:-96}

# Set custom resolution on the host via nvidia-settings
nvidia-settings -a \
  CurrentMetaMode="DPY-1: 1920x1080_144 @${width}x${height} +0+0 {ViewPortIn=${width}x${height}, ViewPortOut=1920x1080+0+0, ForceCompositionPipeline=On, ForceFullCompositionPipeline=On}"

echo "Xft.dpi: $dpi" | xrdb
$HOME/scripts/wallpaper.sh
pkill dwm
pkill slstatus


