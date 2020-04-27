#!/bin/bash
bup="xbacklight +5"
bdown="xbacklight -5"
out="%{F#FFFFFF}%{F-} `brightnessctl | grep Current | awk '{print $4}' | sed  's/[()]//g'`"
echo "%{A1::}%{A4:$bup:}%{A5:$bdown:}$out%{A}%{A}%{A}" > ./scripts/Read/brightness
