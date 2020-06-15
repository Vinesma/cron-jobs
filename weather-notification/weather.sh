#!/bin/bash
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS='unix:path=/run/user/1000/bus'

curl_path="/usr/bin/curl"
notify_send_path="/usr/bin/notify-send"
location='Petrolina'
format='3'

data=$($curl_path wttr.in/$location?format=$format)

"$notify_send_path" "WEATHER:" "$data"
