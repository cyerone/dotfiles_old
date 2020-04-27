#!/bin/bash
vup="pamixer --source 1 -i 5"
vdown="pamixer --source 1 -d 5"
mtoggle="pamixer --source 1 -t"

MUTE=`pamixer --source 1 --get-mute`
VOL=`pamixer --source 1 --get-volume`

if [ "$MUTE" = "false" ]; then
	out="%{F#FFFFFF}%{F-} $VOL%"
else
	out="%{F#FFFFFF}%{F-} MUTE"
fi

echo "%{A1:$mtoggle:}%{A4:$vup:}%{A5:$vdown:}$out%{A}%{A}%{A}" > ./scripts/Read/microphone
