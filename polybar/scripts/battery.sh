#!/bin/bash

B="/org/freedesktop/UPower/devices/battery_BAT0"
State=`upower -i $B | grep state | awk '{print $2}'`
PercentageP=`upower -i $B | grep percentage | awk '{print $2}'`
Percentage=${PercentageP::-1}

if [ "$State" = "charging" ]; then
	echo "%{F#FFFFFF}%{F-} $Percentage%" > ./scripts/Read/battery
else
  if [ "$Percentage" -lt "5" ]; then
    batI=''
  elif [ "$Percentage" -lt "10" ]; then
    batI=''
  elif [ "$Percentage" -lt "20" ]; then
    batI=''
    elif [ "$Percentage" -lt "30" ]; then
    batI=''
    elif [ "$Percentage" -lt "40" ]; then
    batI=''
    elif [ "$Percentage" -lt "50" ]; then
    batI=''
    elif [ "$Percentage" -lt "60" ]; then
    batI=''
    elif [ "$Percentage" -lt "70" ]; then
    batI=''
    elif [ "$Percentage" -lt "80" ]; then
    batI=''
    elif [ "$Percentage" -lt "90" ]; then
    batI=''
  else
    batI=''
  fi
  echo "%{F#FFFFFF}$batI%{F-} $Percentage%" > ./scripts/Read/battery
fi

