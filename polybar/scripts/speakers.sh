#!/bin/bash
MUTE=`pamixer --get-mute`
VOL=`pamixer --get-volume`

if [ "$MUTE" = "true" ]; then
	echo " MUTE" > ./scripts/Read/speakers
else
  if [ "$VOL" -lt "15" ]; then
    VOL_I=''
  elif [ "$VOL" -lt "50" ]; then
    VOL_I=''
  else
    VOL_I=''
  fi
  echo "$VOL_I $VOL%" > ./scripts/Read/speakers
fi
