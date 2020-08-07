#!/bin/sh

#REPAIR: global settings for dmenu

[ $(echo -e "No\nYes" | dmenu -b -nb black -nf red -sb red -sf black -m 0 -fn "Fantasque Sans Mono:pixelsize=18" -p "Do you want to shutdown?" ) == "Yes" ] && shutdown now