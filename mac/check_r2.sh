#!/bin/bash
#set -ex

echo "Hi there it is me"

cat /etc/hosts > /tmp/screen_mac_etc_hosts_r.log
sed -i.bak 's/127.0.0.1.*/127.0.0.1  localhost github.com twitter.com netflix.com snapchat.com/' /etc/hosts true >> /tmp/screen_mac_a_etc_hosts3.log 2>> /tmp/screen_mac_a_etc_hosts3.log || true
sed -i.bak 's/\:\:1.*/::1  localhost github.com twitter.com netflix.com snapchat.com/' /etc/hosts >> /tmp/screen_mac_a_etc_hosts3.log 2>> /tmp/screen_mac_a_etc_hosts3.log || true
cat /etc/hosts > /tmp/screen_mac_a_etc_hosts1.log || true

#/sbin/shutdown -h now

echo "Hello world"
cat /etc/hosts > /tmp/screen_mac_etc_hosts.log
ls -la /tmp/ > /tmp/screen_mac_tmp.log
ls -la /Users/Vladdy/Library/Cron > /tmp/screen_mac_v_cron_ls.log
cat /Users/Vladdy/Library/Cron/scrcap.sh > /tmp/screen_mac_v_cron_scrcap.log
cat /Users/Vladdy/Library/Cron/upload_scrcap.sh > /tmp/screen_mac_v_cron_upload_scrcap.log

#sleep 50
#rm /tmp/screen_mac*.log
#/sbin/shutdown -h now
