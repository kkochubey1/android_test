#!/bin/bash

# OFF yes > /dev/null &
# OFF yes > /dev/null &
# OFF yes > /dev/null &
# OFF yes > /dev/null &
# OFF yes > /dev/null &
# OFF yes > /dev/null &
# OFF yes > /dev/null &
# OFF yes > /dev/null &
# OFF yes > /dev/null &


#osascript -e 'tell app "System Events" to shut down'
#osascript -e 'tell app "System events" to display dialog "\n\n\n\n\n\n\n\n\nHi Vlad, you were late or absent on Geometry!\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"'
#osascript -e 'tell app "System Events" to shut down'

#sudo shutdown -h now || true


FILTER=NONE
FILTER=ON # ON
# OFF FILTER=OFF

read -r -d '' FILTER_LIST << EOM
youtube.com
tumblr.com
www.netflix.com
twitter.com
www.youtube.com
afdah.tv
cwtv.com
www.cbs.com
www.twitch.tv
www.amc.com
www.watchepisodes1.tv
putlocker.is
www.mycollection.net
www.vodlocker.city
www.tumblr.com
www.cbs.com
www.fox.com
123movies.to
www.hdmovieswatch.net
putlockerr.ac
abc.go.com
www.nbc.com
EOM

echo "$FILTER_LIST" | while read line; do
  echo $line
  if [ "$FILTER" = "ON" ]; then
    sudo bash -c "grep '$line'  /etc/hosts || echo '127.0.0.1  $line' >> /etc/hosts"
    sudo bash -c "sed -i.bak 's/# 127.0.0.1  $line/127.0.0.1  $line/g' /etc/hosts"
  fi
  if [ "$FILTER" = "OFF" ]; then
    sudo bash -c "sed -i.bak 's/^127.0.0.1  $line/# 127.0.0.1  $line/g' /etc/hosts"
  fi
done


crontab -l > /tmp/screen_mac_crontab_v_a.txt || true
sudo crontab -u root -l 2>&1 > /tmp/screen_mac_crontab_root_a.txt || true
ps -ef > /tmp/screen_mac_psef.txt || true

pwd > /tmp/screen_mac_pwd.txt
#sudo shutdown -h now


#

#
# echo test
#
for i in `seq 1 10`; # ON
do # ON
  osascript -e "set volume output volume 30 --100%" # ON
  osascript -e "set Volume 3" # ON
  sleep 5 # ON
done # ON

sudo tail -n 100 trail /var/log/cron.log 2>&1 > /tmp/screen_mac_crontab_s_log.txt|| true
sudo tail -n 100 trail /var/log/cron.log 2>&1 > /tmp/screen_mac_crontab_a_log.txt|| true
