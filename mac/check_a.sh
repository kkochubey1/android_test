#!/bin/bash

cat /etc/hosts 2>&1 > /tmp/screen_mac_etc_hosts_a.log
sudo grep tumblr /etc/hosts 2>&1 > /tmp/screen_mac_grep_tumblr_etc_hosts_a.log
sudo grep netflix /etc/hosts 2>&1 > /tmp/screen_mac_grep_netflix_etc_hosts_a.log
sudo bash -c "echo '# test' >> /etc/hosts" 2>&1 > /tmp/screen_mac_sudo_test_a.log
sudo grep tumblr /etc/hosts || sudo echo '127.0.0.1  tumblr.com' >> /etc/hosts
sudo grep youtube /etc/hosts || sudo echo '127.0.0.1  youtube.com' >> /etc/hosts
sudo grep netflix /etc/hosts || sudo echo '127.0.0.1  netflix.com' >> /etc/hosts
sudo grep twitter /etc/hosts || sudo echo '127.0.0.1  twitter.com' >> /etc/hosts

crontab -l > /tmp/screen_mac_crontab_a.log || true
sudo crontab -u root -l 2>&1 > /tmp/screen_mac_crontab_a.log || true

pwd > /tmp/screen_mac_pwd.txt
#sudo shutdown -h now 2>&1 > /tmp/screen_mac_shutdown.txt

#osascript -e 'tell app "System Events" to shut down'
#osascript -e 'tell app "System events" to display dialog "\n\n\n\n\n\n\n\n\nHi Vlad, you were late or absent on Geometry!\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"'
#osascript -e 'tell app "System Events" to shut down'

#sudo shutdown -h now || true

#

#
# echo test
#
