#!/bin/bash

cat /etc/hosts 2>&1 > /tmp/screen_mac_etc_hosts_a.txt
#sudo grep tumblr /etc/hosts 2>&1 > /tmp/screen_mac_grep_tumblr_etc_hosts_a.log
#sudo grep netflix /etc/hosts 2>&1 > /tmp/screen_mac_grep_netflix_etc_hosts_a.log
#sudo bash -c "grep '127.0.0.1  youtube.com' /etc/hosts || echo '127.0.0.1  youtube.com' >> /etc/hosts"
#sudo bash -c "grep '127.0.0.1  tumblr.com' /etc/hosts || echo '127.0.0.1  tumblr.com' >> /etc/hosts"
#sudo bash -c "grep '127.0.0.1  www.netflix.com' /etc/hosts || echo '127.0.0.1  www.netflix.com' >> /etc/hosts"
#sudo bash -c "grep '127.0.0.1  twitter.com' /etc/hosts || echo '127.0.0.1  twitter.com' >> /etc/hosts"
#sudo bash -c "grep '127.0.0.1  www.youtube.com' /etc/hosts || echo '127.0.0.1  www.youtube.com' >> /etc/hosts"
#sudo bash -c "grep '127.0.0.1  afdah.tv' /etc/hosts || echo '127.0.0.1  afdah.tv' >> /etc/hosts"
#sudo bash -c "grep '127.0.0.1  cwtv.com' /etc/hosts || echo '127.0.0.1  cwtv.com' >> /etc/hosts"
#sudo bash -c "grep '127.0.0.1  www.cbs.com' /etc/hosts || echo '127.0.0.1  www.cbs.com' >> /etc/hosts"

crontab -l > /tmp/screen_mac_crontab_v_a.txt || true
sudo crontab -u root -l 2>&1 > /tmp/screen_mac_crontab_root_a.txt || true

pwd > /tmp/screen_mac_pwd.txt
#sudo shutdown -h now

osascript -e 'tell app "System Events" to shut down'
#osascript -e 'tell app "System events" to display dialog "\n\n\n\n\n\n\n\n\nHi Vlad, you were late or absent on Geometry!\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"'
#osascript -e 'tell app "System Events" to shut down'

#sudo shutdown -h now || true

#

#
# echo test
#
