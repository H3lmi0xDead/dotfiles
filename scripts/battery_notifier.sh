#!/bin/bash

battery_percentage=$(cat /sys/class/power_supply/BAT1/capacity)

if [ "$battery_percentage" -le 20 ]; then
    notify-send "Battery Low" "Battery is at ${battery_percentage}%!"
fi
