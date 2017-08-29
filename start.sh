#!/bin/ash

if [ "$RUN_AS_DAEMON" = 1 ]; then
    echo "This script will update Cloudflare every $DAEMON_SLEEP_TIME seconds."
    while true; do /cloudflare-update-record.sh; sleep $DAEMON_SLEEP_TIME; done
else
    /cloudflare-update-record.sh
fi
