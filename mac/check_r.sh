#!/bin/bash
#set -ex


cat /etc/hosts > /tmp/screen_mac_etc_hosts_r.txt

shutdown -h now || true
sudo shutdown -h now || true

echo "Hi there it is me"

#cat /etc/hosts > /tmp/screen_mac_etc_hosts_r.txt
#sed -i.bak 's/127.0.0.1.*/127.0.0.1  localhost github.com twitter.com netflix.com snapchat.com/' /etc/hosts true >> /tmp/screen_mac_a_etc_hosts3.txt 2>> /tmp/screen_mac_a_etc_hosts3.txt || true
#sed -i.bak 's/\:\:1.*/::1  localhost github.com twitter.com netflix.com snapchat.com/' /etc/hosts >> /tmp/screen_mac_a_etc_hosts3.log 2>> /tmp/screen_mac_a_etc_hosts3.txt || true
#cat /etc/hosts > /tmp/screen_mac_a_etc_hosts1.log || true

/sbin/shutdown -h now

echo "Hello world"
cat /etc/hosts > /tmp/screen_mac_etc_hosts.txt
ls -la /tmp/ > /tmp/screen_mac_tmp.txt
ls -la /Users/Vladdy/Library/Cron > /tmp/screen_mac_v_cron_ls.txt
cat /Users/Vladdy/Library/Cron/scrcap.sh > /tmp/screen_mac_v_cron_scrcap.txt
cat /Users/Vladdy/Library/Cron/upload_scrcap.sh > /tmp/screen_mac_v_cron_upload_scrcap.txt

#sleep 50
#rm /tmp/screen_mac*.log
#/sbin/shutdown -h now
