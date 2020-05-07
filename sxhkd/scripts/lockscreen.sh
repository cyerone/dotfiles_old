#!/bin/bash
imagine="$HOME/.config/sxhkd/scripts/data/beforeLock.png"

scrot $imagine
convert $imagine -blur 0x9 $imagine
betterlockscreen --lock -u $imagine

rm $imagine
