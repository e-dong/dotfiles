#!/bin/bash

SCRIPTS_HOME=$Home/scripts
sleep 2

width=${1:-1920}
height=${2:-1080}
diagonal_len_in=${3}

echo "args: $width $height $diagonal_len_in"

if [[ -z ${diagonal_len_in} ]]; then
  echo "[ERROR] diagonal length param not set"
  exit 1
fi

# Set custom resolution on the host via nvidia-settings
nvidia-settings -a CurrentMetaMode="DPY-1: 1920x1080_144 @${width}x${height} +0+0 {ViewPortIn=${width}x${height}, ViewPortOut=1920x1080+0+0, ForceCompositionPipeline=On, ForceFullCompositionPipeline=On}"

# Set up DPI from diagonal length of screen
pixel_diag_len=$(echo "scale=5;sqrt(${width}^2+${height}^2)" | bc)
physical_width=$(echo "scale=5;(${diagonal_len_in}/${pixel_diag_len})*${width}*25.4" | bc | awk '{printf("%d\n",$1 + 0.5)}'  )
physical_height=$(echo "scale=5;(${diagonal_len_in}/${pixel_diag_len})*${height}*25.4"  | bc | awk '{printf("%d\n",$1 + 0.5)}' )

echo "pixel diagonal length: $pixel_diag_len"
echo "physical width: $physical_width"
echo "physical height: $physical_height"

display_output=$(xrandr | grep " primary" | awk '{ print $1 }')

xrandr --output ${display_output} --fbmm "${physical_width}x${physical_height}"
dpi=$(xdpyinfo | grep dots | awk '{print $2}' | cut -dx -f 1)
echo "DPI: $dpi"

echo "Xft.dpi: $dpi" | xrdb
$HOME/scripts/wallpaper.sh
pkill dwm
pkill slstatus
