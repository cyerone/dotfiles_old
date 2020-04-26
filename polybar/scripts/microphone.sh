#!/bin/bash
MUTE=`pamixer --source 1 --get-mute`
VOL=`pamixer --source 1 --get-volume`
if [ "$MUTE" = "false" ]; then
	echo " $VOL%" > ./scripts/Read/microphone
else
	echo " MUTE" > ./scripts/Read/microphone
fi
