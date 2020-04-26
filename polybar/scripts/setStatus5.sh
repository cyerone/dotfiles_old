#!/bin/bash
cd $HOME/.config/polybar/

sh ./scripts/connection.sh
sh ./scripts/memory.sh
sh ./scripts/battery.sh
