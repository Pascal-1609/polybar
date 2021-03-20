#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config

myc=$(xrandr --query | grep 'HDMI-0')
if [[ $myc == "HDMI-0 connected primary (normal left inverted right x axis y axis)" ]]	
    then
		polybar mybar &
		polybar external
	else
		polybar mybar
fi


echo "Polybar launched..."
