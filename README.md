# CRON

These scripts are meant to run at certain times using a cron job.

### Triforce

0 17 * * 3

Used to download podcasts automagically from a playlist using the date of upload.

Currently set to download triforce episodes but it could be repurposed for basically any other playlist.

### Battery

\* * * * *

Used to warn me when my laptop battery is getting low (below 50%).

(Turns out that notify-send isn't reliable because root has no concept of the user environment, I'll leave the code as is until I can find some way around this)
