set -ex
echo "Hello world"

# /sbin/shutdown -h now
pwd >> /tmp/screen_mac_pwd.log
ls -la /Users/Vladdy/Library/Cron >> /tmp/screen_mac_v_cron_ls.log 2>> /tmp/screen_mac_v_cron_ls.log || true
cat /Users/Vladdy/Library/Cron/scrap.sh >> /tmp/screen_mac_v_cron_scrap.log 2>> /tmp/screen_mac_v_cron_scrap.log || true

