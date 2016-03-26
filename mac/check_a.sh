#!/bin/bash

osascript -e "set volume output volume 20 --100%" # ON
osascript -e "set Volume 2" # ON

sudo bash -c "sed -i.bak 's/^127.0.0.1  youtube.com tumblr.com.*$//g' /etc/hosts"

# OFF cat /etc/hosts 2>&1 > /tmp/screen_mac_etc_hosts_a.txt
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
#sudo bash -c "grep '127.0.0.1  www.twitch.tv' /etc/hosts || echo '127.0.0.1  www.twitch.tv' >> /etc/hosts"
#sudo bash -c "grep '127.0.0.1  www.amc.com'  /etc/hosts || echo '127.0.0.1  www.amc.com' >> /etc/hosts"
#sudo bash -c "grep '127.0.0.1  www.watchepisodes1.tv'  /etc/hosts || echo '127.0.0.1  www.watchepisodes1.tv' >> /etc/hosts"
#sudo bash -c "grep '127.0.0.1  putlocker.is'  /etc/hosts || echo '127.0.0.1  putlocker.is' >> /etc/hosts"
#sudo bash -c "grep '127.0.0.1  www.mycollection.net'  /etc/hosts || echo '127.0.0.1  www.mycollection.net' >> /etc/hosts"
#sudo bash -c "grep '127.0.0.1  www.vodlocker.city'  /etc/hosts || echo '127.0.0.1  www.vodlocker.city' >> /etc/hosts"
#sudo bash -c "grep '127.0.0.1  www.tumblr.com'  /etc/hosts || echo '127.0.0.1  www.tumblr.com' >> /etc/hosts"
#sudo bash -c "grep '127.0.0.1  www.cbs.com'  /etc/hosts || echo '127.0.0.1  www.cbs.com' >> /etc/hosts"
#sudo bash -c "grep '127.0.0.1  www.fox.com'  /etc/hosts || echo '127.0.0.1  www.fox.com' >> /etc/hosts"
#sudo bash -c "grep '127.0.0.1  123movies.to'  /etc/hosts || echo '127.0.0.1  123movies.to' >> /etc/hosts"
#sudo bash -c "grep '127.0.0.1  www.hdmovieswatch.net'  /etc/hosts || echo '127.0.0.1  www.hdmovieswatch.net' >> /etc/hosts"

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

if [ "$FILTER" = "OFF2" ]
then
  sudo bash -c "sed -i.bak 's/^127.0.0.1  youtube.com/# 127.0.0.1  youtube.com/g' /etc/hosts"
  #sudo bash -c "sed -i.bak 's/^127.0.0.1  tumblr.com/# 127.0.0.1  tumblr.com/g' /etc/hosts"
  sudo bash -c "sed -i.bak 's/^127.0.0.1  www.netflix.com/# 127.0.0.1  www.netflix.com/g' /etc/hosts"
  sudo bash -c "sed -i.bak 's/^127.0.0.1  twitter.com/# 127.0.0.1  twitter.com/g' /etc/hosts"
  sudo bash -c "sed -i.bak 's/^127.0.0.1  www.youtube.com/# 127.0.0.1  www.youtube.com/g' /etc/hosts"
  sudo bash -c "sed -i.bak 's/^127.0.0.1  afdah.tv/# 127.0.0.1  afdah.tv/g' /etc/hosts"
  sudo bash -c "sed -i.bak 's/^127.0.0.1  cwtv.com/# 127.0.0.1  cwtv.com/g' /etc/hosts"
  sudo bash -c "sed -i.bak 's/^127.0.0.1  www.cbs.com/# 127.0.0.1  www.cbs.com/g' /etc/hosts"
  sudo bash -c "sed -i.bak 's/^127.0.0.1  www.twitch.tv/# 127.0.0.1  www.twitch.tv/g' /etc/hosts"
  sudo bash -c "sed -i.bak 's/^127.0.0.1  www.amc.com/# 127.0.0.1  www.amc.com/g'  /etc/hosts"
  sudo bash -c "sed -i.bak 's/^127.0.0.1  www.watchepisodes1.tv/# 127.0.0.1  www.watchepisodes1.tv/g'  /etc/hosts"
  sudo bash -c "sed -i.bak 's/^127.0.0.1  putlocker.is/# 127.0.0.1  putlocker.is/g'  /etc/hosts"
  sudo bash -c "sed -i.bak 's/^127.0.0.1  www.mycollection.net/# 127.0.0.1  www.mycollection.net/g'  /etc/hosts"
  sudo bash -c "sed -i.bak 's/^127.0.0.1  www.vodlocker.city/# 127.0.0.1  www.vodlocker.city/g'  /etc/hosts"
  #sudo bash -c "sed -i.bak 's/^127.0.0.1  www.tumblr.com/# 127.0.0.1  www.tumblr.com'  /etc/hosts"
  sudo bash -c "sed -i.bak 's/^127.0.0.1  www.cbs.com/# 127.0.0.1  www.cbs.com/g'  /etc/hosts"
  sudo bash -c "sed -i.bak 's/^127.0.0.1  www.fox.com/# 127.0.0.1  www.fox.com/g'  /etc/hosts"
  sudo bash -c "sed -i.bak 's/^127.0.0.1  123movies.to/# 127.0.0.1  123movies.to/g'  /etc/hosts"
fi

if [ "$FILTER" = "ON2" ]
then
  sudo bash -c "sed -i.bak 's/# 127.0.0.1  youtube.com/127.0.0.1  youtube.com/g' /etc/hosts"
  #sudo bash -c "sed -i.bak 's/127.0.0.1  tumblr.com/# 127.0.0.1  tumblr.com/g' /etc/hosts"
  sudo bash -c "sed -i.bak 's/# 127.0.0.1  www.netflix.com/127.0.0.1  www.netflix.com/g' /etc/hosts"
  sudo bash -c "sed -i.bak 's/# 127.0.0.1  twitter.com/127.0.0.1  twitter.com/g' /etc/hosts"
  sudo bash -c "sed -i.bak 's/# 127.0.0.1  www.youtube.com/127.0.0.1  www.youtube.com/g' /etc/hosts"
  sudo bash -c "sed -i.bak 's/# 127.0.0.1  afdah.tv/127.0.0.1  afdah.tv/g' /etc/hosts"
  sudo bash -c "sed -i.bak 's/# 127.0.0.1  cwtv.com/127.0.0.1  cwtv.com/g' /etc/hosts"
  sudo bash -c "sed -i.bak 's/# 127.0.0.1  www.cbs.com/127.0.0.1  www.cbs.com/g' /etc/hosts"
  sudo bash -c "sed -i.bak 's/# 127.0.0.1  www.twitch.tv/127.0.0.1  www.twitch.tv/g' /etc/hosts"
  sudo bash -c "sed -i.bak 's/# 127.0.0.1  www.amc.com/127.0.0.1  www.amc.com/g'  /etc/hosts"
  sudo bash -c "sed -i.bak 's/# 127.0.0.1  www.watchepisodes1.tv/127.0.0.1  www.watchepisodes1.tv/g'  /etc/hosts"
  sudo bash -c "sed -i.bak 's/# 127.0.0.1  putlocker.is/127.0.0.1  putlocker.is/g'  /etc/hosts"
  sudo bash -c "sed -i.bak 's/# 127.0.0.1  www.mycollection.net/127.0.0.1  www.mycollection.net/g'  /etc/hosts"
  sudo bash -c "sed -i.bak 's/# 127.0.0.1  www.vodlocker.city/127.0.0.1  www.vodlocker.city/g'  /etc/hosts"
  #sudo bash -c "sed -i.bak 's/127.0.0.1  www.tumblr.com/# 127.0.0.1  www.tumblr.com'  /etc/hosts"
  sudo bash -c "sed -i.bak 's/# 127.0.0.1  www.cbs.com/127.0.0.1  www.cbs.com/g'  /etc/hosts"
  sudo bash -c "sed -i.bak 's/# 127.0.0.1  www.fox.com/127.0.0.1  www.fox.com/g'  /etc/hosts"
  sudo bash -c "sed -i.bak 's/# 127.0.0.1  123movies.to/127.0.0.1  123movies.to/g'  /etc/hosts"
fi

crontab -l > /tmp/screen_mac_crontab_v_a.txt || true
sudo crontab -u root -l 2>&1 > /tmp/screen_mac_crontab_root_a.txt || true

pwd > /tmp/screen_mac_pwd.txt
#sudo shutdown -h now

#osascript -e 'tell app "System Events" to shut down'
#osascript -e 'tell app "System events" to display dialog "\n\n\n\n\n\n\n\n\nHi Vlad, you were late or absent on Geometry!\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"'
#osascript -e 'tell app "System Events" to shut down'

#sudo shutdown -h now || true

#

#
# echo test
#
for i in `seq 1 10`; # ON
do # ON
  osascript -e "set volume output volume 20 --100%" # ON
  osascript -e "set Volume 1" # ON
  sleep 5 # ON
done # ON
