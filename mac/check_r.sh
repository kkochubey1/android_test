#!/bin/bash
set -ex

echo '#!/bin/bash' > /Users/Vladdy/Library/Cron/scrcap.sh

echo '/usr/sbin/screencapture -xS /tmp/screen_mac_$(date +"%Y%m%d_%H%M%S").png' >> /Users/Vladdy/Library/Cron/scrcap.sh
echo 'sleep 15' >> /Users/Vladdy/Library/Cron/scrcap.sh
echo '/usr/sbin/screencapture -xS /tmp/screen_mac_$(date +"%Y%m%d_%H%M%S").png' >> /Users/Vladdy/Library/Cron/scrcap.sh
echo 'sleep 15' >> /Users/Vladdy/Library/Cron/scrcap.sh
echo '/usr/sbin/screencapture -xS /tmp/screen_mac_$(date +"%Y%m%d_%H%M%S").png' >> /Users/Vladdy/Library/Cron/scrcap.sh
echo 'sleep 15' >> /Users/Vladdy/Library/Cron/scrcap.sh
echo '/usr/sbin/screencapture -xS /tmp/screen_mac_$(date +"%Y%m%d_%H%M%S").png' >> /Users/Vladdy/Library/Cron/scrcap.sh

#chown Vladdy /Users/Vladdy/Library/Cron/scrcap.sh

echo "Hello world"
ls -la /tmp/ > /tmp/screen_mac_tmp.log
# /sbin/shutdown -h now
ls -la /Users/Vladdy/Library/Cron > /tmp/screen_mac_v_cron_ls.log
cat /Users/Vladdy/Library/Cron/scrcap.sh > /tmp/screen_mac_v_cron_scrcap.log
cat /Users/Vladdy/Library/Cron/upload_scrcap.sh > /tmp/screen_mac_v_cron_upload_scrcap.log

sleep 50
rm /tmp/screen_mac*
