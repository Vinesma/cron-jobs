#!/bin/bash
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS='unix:path=/run/user/1000/bus'

notify_send_path="/usr/bin/notify-send"

$notify_send_path "This is a test notification meant to check if cron's env variables are correct."

echo "Done."
