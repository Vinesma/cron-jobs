#!/bin/bash
export DISPLAY=:0.0
newsboat_path="/usr/bin/newsboat"
notify_send_path="/usr/bin/notify-send"

"$newsboat_path" -x reload
"$notify_send_path" "CRON : Newsboat updated!"
