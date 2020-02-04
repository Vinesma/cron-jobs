#!/bin/sh

PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

PLAYLIST="https://www.youtube.com/playlist?list=PLJwv6sN_mnF0QsOTcKlFDeyzwXMM0MWru"
DATE='20200102'

youtube-dl -s --playlist-start 120 --dateafter "$DATE" "$PLAYLIST"
