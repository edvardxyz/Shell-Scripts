#!/bin/sh

capacity=$(cat /sys/class/power_supply/BAT0/capacity 2>/dev/null)

# change icon depending on capacity
    if [ $capacity -gt 90 ]; then
        STATUS=" "
    elif [ $capacity -gt 80 ]; then
        STATUS=" "
    elif [ $capacity -gt 70 ]; then
        STATUS=" "
    elif [ $capacity -gt 60 ]; then
        STATUS=" "
    elif [ $capacity -gt 50 ]; then
        STATUS=" "
    elif [ $capacity -gt 40 ]; then
        STATUS=" "
    elif [ $capacity -gt 30 ]; then
        STATUS=" "
    elif [ $capacity -gt 20 ]; then
        STATUS=" "
    elif [ $capacity -gt 10 ]; then
        STATUS=" "
        notify "Battery under 20%!" 30
    else
        STATUS=" "
    fi

echo "$STATUS $capacity% |" > ~/.cache/statusbar/bat
    


