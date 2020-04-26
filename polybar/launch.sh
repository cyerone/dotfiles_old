#!/usr/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar main -c $HOME/.config/polybar/config >> /tmp/polybar 2>&1 &
polybar second -c $HOME/.config/polybar/config >> /tmp/polybar2 2>&1 &
