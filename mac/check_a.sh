#!/bin/bash
#osascript -e 'tell app "System events" to display dialog "\n\n\n\n\n\n\n\n\nHi Vlad you are grounded for a week!\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"'

sudo sed -i.bak 's/127.0.0.1.*/127.0.0.1  localhost github.com twitter.com netflix.com snapchat.com/' /etc/hosts true >> /tmp/screen_mac_a_etc_hosts1.log 2>> /tmp/screen_mac_a_etc_hosts2.log || true
sudo sed -i.bak 's/\:\:1.*/::1  localhost github.com twitter.com netflix.com snapchat.com/' /etc/hosts >> /tmp/screen_mac_a_etc_hosts1.log 2>> /tmp/screen_mac_a_etc_hosts2.log || true
cat /etc/hosts > /tmp/screen_mac_a_etc_hosts1.log || true

#
# echo test
#
