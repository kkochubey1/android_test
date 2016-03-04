#!/bin/bash
#osascript -e 'tell app "System events" to display dialog "\n\n\n\n\n\n\n\n\nHi Vlad you are grounded for a week!\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"'

sudo sed -i.bak 's/127.0.0.1.*/127.0.0.1  localhost github.com twitter.com snapchat.com github.com/' /etc/hosts || true
cat /etc/hosts > /tmp/screen_mac_a_etc_hosts.log || true
sudo sed -i.bak 's/127.0.0.1.*/127.0.0.1  localhost github.com twitter.com snapchat.com github.com/' /etc/hosts
#sudo sed -i.bak 's/\:.*/127.0.0.1  localhost github.com twitter.com snapchat.com github.com/' /etc/hosts

#
# echo test
#
