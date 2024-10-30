#!/bin/zsh

source $HOME/.local/theme/wallpaper.sh

#wallpaper_image=~/Pictures/backgrounds/gandalf_v_balrog.jpg
#xwallpaper --zoom /usr/share/backgrounds/metis/b-01-dark.png &
#xwallpaper --maximize ${wallpaper_image} &
$(xrandr --listproviders | grep -q "modesetting") && xrandr --setprovideroutputsource 1 0 && xrandr --setprovideroutputsource 2 0
openrazer-daemon
wal -i ${wallpaper_image} && razer-cli -a
slstatus &
picom &
pulseaudio &
exec dwm >/dev/null 2>&1
#exec qtile start
