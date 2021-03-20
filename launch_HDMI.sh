#!/bin/bash

myc=$(xrandr --query | grep 'HDMI-0')
if [[ $myc = *connected* ]]
then
	polybar external
fi
