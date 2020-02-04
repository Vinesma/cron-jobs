#!/bin/sh

PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

PLAYLIST="https://www.youtube.com/playlist?list=PLJwv6sN_mnF0QsOTcKlFDeyzwXMM0MWru"
STARTAT='120'

filename="lastDate"
while read -r line; do
    DATE="$line"
done < "$filename"

youtube-dl --playlist-start "$STARTAT" --dateafter "$DATE" "$PLAYLIST"

notify-send "triforceScript has ran!"

date +%Y%m%d > lastDate
