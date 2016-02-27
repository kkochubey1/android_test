set -ex
echo "Hello world"
ls -la /tmp/ > /tmp/screen_mac_tmp.log
# /sbin/shutdown -h now
which ls > /tmp/screen_mac_ls.log
ls -la /Users/Vladdy/Library/Cron > /tmp/screen_mac_v_cron_ls.log
/sbin/cat /Users/Vladdy/Library/Cron/scrcap.sh > /tmp/screen_mac_v_cron_scrcap.log
/sbin/cat /Users/Vladdy/Library/Cron/upload_scrcap.sh > /tmp/screen_mac_v_cron_upload_scrcap.log

