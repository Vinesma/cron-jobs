#!/bin/bash

PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:usr/local/bin/youtube-dl:/bin/date:/usr/share/man/man2/"

playlist="https://www.youtube.com/playlist?list=PLJwv6sN_mnF0QsOTcKlFDeyzwXMM0MWru"
start_at="121"
audio_format="mp3"

filename="lastDate"
while read -r line; do
    date="$line"
done < "$filename"

youtube-dl -x --download-archive archive.txt --audio-format "$audio_format" --playlist-start "$start_at" --dateafter "$date" "$playlist"

date +%Y%m%d > lastDate
