[[ -z $SSH_CLIENT && -z $DISPLAY && $XDG_VTNR -le 4 ]] && {
  clear
  source $HOME/.local/theme/wallpaper.sh
  wal -i ${wallpaper_image} > /dev/null
  setfont ter-120n
  clear
  $HOME/.local/theme/moria_ascii.sh $HOME/.local/theme/moria.txt
  sleep 1
  startx
  exit 0
} 


