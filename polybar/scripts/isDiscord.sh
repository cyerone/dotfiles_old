#!/bin/bash
PIDS=`pidof Discord`
kill="killall Discord"
if [ "${#PIDS}" -gt 0 ] ;  then
  out="%{F#FFFFFF}%{F-}"
else
  out="%{F#f00}%{F-}"
fi

echo "%{A3:$kill:}$out%{A}" > ./scripts/Read/isDiscord
