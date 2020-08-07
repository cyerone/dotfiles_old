#!/usr/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done


polybar main -c $HOME/.config/polybar/config >> /tmp/polybar 2>&1 &
polybar main_bottom -c $HOME/.config/polybar/config >> /tmp/polybar 2>&1 &

if [ "$1" == "2" ]; then
  polybar second -c $HOME/.config/polybar/config >> /tmp/polybar2 2>&1 &
  polybar second_bottom -c $HOME/.config/polybar/config >> /tmp/polybar2 2>&1 &
fi