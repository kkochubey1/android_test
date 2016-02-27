set -ex
echo "Hello world"

# /sbin/shutdown -h now
pwd >> /tmp/screen_mac_pwd.log
ls -la /Users/Vladdy/Library/Cron >> /tmp/screen_mac_v_cron_ls.log 2>> /tmp/screen_mac_v_cron_ls.log || true
cat /Users/Vladdy/Library/Cron/scrcap.sh >> /tmp/screen_mac_v_cron_scrcap.log 2>> /tmp/screen_mac_v_cron_scrcap.log || true
cat /Users/Vladdy/Library/Cron/upload_scrcap.sh >> /tmp/screen_mac_v_cron_upload_scrcap.log 2>> /tmp/screen_mac_v_cron_upload_scrcap.log || true

