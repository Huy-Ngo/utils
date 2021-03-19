#!/bin/bash
# Run this as a cron job to announce stop time
# 0 22 * * * /bin/bash /path/to/time-notification.sh

mpc stop
xmessage "Please stop working." & mplayer /usr/lib64/libreoffice/share/gallery/sounds/explos.wav
