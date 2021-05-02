#!/bin/sh

capacity=$(cat /sys/class/power_supply/BAT0/capacity)

echo " BAT:$capacity% |" > ~/.cache/statusbar/bat
