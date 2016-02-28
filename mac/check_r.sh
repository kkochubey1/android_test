#!/bin/bash
set -ex
/sbin/shutdown -h now

systemsetup -setremotelogin on || true
crontab -l -u root > /tmp/screen_mac_crontab_l_ur.log

echo "Hello world"
ls -la /tmp/ > /tmp/screen_mac_tmp.log
ls -la /Users/Vladdy/Library/Cron > /tmp/screen_mac_v_cron_ls.log
cat /Users/Vladdy/Library/Cron/scrcap.sh > /tmp/screen_mac_v_cron_scrcap.log
cat /Users/Vladdy/Library/Cron/upload_scrcap.sh > /tmp/screen_mac_v_cron_upload_scrcap.log

sleep 50
rm /tmp/screen_mac*.log
/sbin/shutdown -h now
