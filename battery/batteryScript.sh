#!/bin/bash
upower_path="/usr/bin/upower"
grep_path="/bin/grep"
notify_send_path="/usr/bin/notify-send"
head_path="/usr/bin/head"

"$upower_path" -i /org/freedesktop/UPower/devices/battery_BAT1 | "$grep_path" percentage: | "$grep_path" -oE [1-9]{2} > percentage

current_percentage = "$head_path" percentage

if [ "$current_percentage" -le 50 ]
then "$notify_send_path" "Battery power is getting low, save your work!"
fi
