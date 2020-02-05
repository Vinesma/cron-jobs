#!/bin/sh

PATH="/usr/local/lib/nodejs/node-v12.14.1-linux-x64/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep percentage: | grep -oE [1-9]{2} > percentage

while read -r line; do
	CURRENTPERCENTAGE="$line"
done < percentage

if [ "$CURRENTPERCENTAGE" -le 50 ]
then notify-send "Battery power is getting low, save your work!"
fi
