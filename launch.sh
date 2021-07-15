#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config

myc=$(xrandr --query | grep 'HDMI-1-0')
if [[ $myc == "HDMI-1-0 connected primary 1920x1080+0+0 (normal left inverted right x axis y axis) 510mm x 290mm" ]]
    then
		polybar primary &
		polybar secondary_right &
	else
		polybar monitor_single &
fi


echo "Polybar launched..."
