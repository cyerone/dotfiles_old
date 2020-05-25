#!/bin/bash
cd $HOME/.config/polybar/

sh ./scripts/sound.sh
sh ./scripts/player.sh 2>/dev/null
sh ./scripts/brightness.sh
sh ./scripts/isDiscord.sh
sh ./scripts/bluetooth.sh 2>/dev/null
