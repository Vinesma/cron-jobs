#!/bin/bash
export DISPLAY=:0.0
home_path="/home/vinesma"
youtube_dl_path="/usr/local/bin/youtube-dl"
date_path="/bin/date"
notify_send_path="/usr/bin/notify-send"

playlist="https://www.youtube.com/playlist?list=PLJwv6sN_mnF0QsOTcKlFDeyzwXMM0MWru"
start_at="126"
audio_format="mp3"
output_string="$home_path/Sync/%(title)s.%(ext)s"

filename="lastDate"
while read -r line; do
    date="$line"
done < "$filename"

"$youtube_dl_path" -x --download-archive archive.txt --audio-format "$audio_format" --playlist-start "$start_at" --dateafter "$date" -o "$output_string" "$playlist"

"$date_path" +%Y%m%d > lastDate
"$notify_send_path" "CRON : triforceScript just ran!"
