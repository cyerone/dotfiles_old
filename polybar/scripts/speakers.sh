#!/bin/bash

vup="pamixer -i 5"
vdown="pamixer -d 5"
mtoggle="pamixer -t"

MUTE=`pamixer --get-mute`
VOL=`pamixer --get-volume`

if [ "$MUTE" = "true" ]; then
	out="%{F#FFFFFF}%{F-} MUTE"
else
  if [ "$VOL" -lt "15" ]; then
    VOL_I=''
  elif [ "$VOL" -lt "50" ]; then
    VOL_I=''
  else
    VOL_I=''
  fi
  out="%{F#FFFFFF}$VOL_I%{F-} $VOL%"
fi
echo "%{A1:$mtoggle:}%{A4:$vup:}%{A5:$vdown:}$out%{A}%{A}%{A}" > ./scripts/Read/speakers
