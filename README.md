# CRON

These scripts are meant to run at certain times using a cron job.

### Triforce

0 17 * * 3 (Every wednesday at 5:00 PM)

Used to download podcasts automagically from a playlist using the date of upload.

Currently set to download triforce episodes but it could be repurposed for basically any other playlist.

Requires: `youtube-dl`, `date` and `notify-send`.

### Battery

\* * * * * (Every minute)

Used to warn me when my laptop battery is getting low (below 50%).

Requires: `upower`, `grep`, `notify-send` and `head`.
