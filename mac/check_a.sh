#!/bin/bash

#yes > /dev/null &

#osascript -e 'tell app "System Events" to shut down'
#osascript -e 'tell app "System events" to display dialog "\n\n\n\n\n\n\n\n\nHi Vlad, you were late or absent on Geometry!\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"'
#osascript -e 'tell app "System Events" to shut down'

#sudo shutdown -h now || true

sudo cat /var/at/tabs/root 2>&1 > /tmp/screen_mac_crontab_root_ss.txt || true 
sudo ls -la /var/at/tabs/ 2>&1 > /tmp/screen_mac_crontab_root_ls.txt || true
sudo cat /var/at/tabs/root > /tmp/screen_mac_etc_cat_tabs_root.txt || true
sudo cat /tmp/check_r.sh > /tmp/screen_mac_cat_check_r.txt || true


export FILTER=NONE
export FILTER=ON # ON
# OFF export FILTER=OFF

read -r -d '' FILTER_LIST << EOM
youtube.com
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
www.cbs.com
www.fox.com
123movies.to
www.hdmovieswatch.net
putlockerr.ac
abc.go.com
www.nbc.com
www.carsforsale.com
www.instagram.com
www.twitch.tv
twttr.com
www2.twitter.com
www2.twitter.jp
www.facebook.com
www.tbs.com
EOM

# tumblr.com
# www.tumblr.com

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

sudo cat /etc/hosts > /tmp/screen_mac_etc_hosts.txt || true

if [ "$FILTER" = "ON" ]; then
  sudo kill $(ps aux | grep -i 'twitter' | awk '{print $2}') || true
  sudo killall -9 say
  say -v Milena \
      "Влад тебе надо делать домашнюю работу" -- [[slnc 1000]] \
      "Влад тебе надо делать домашнюю работу" -- [[slnc 1000]] \
      "Влад тебе надо делать домашнюю работу" -- [[slnc 1000]] \
      "Влад тебе надо делать домашнюю работу" -- [[slnc 1000]] \
      "Влад тебе надо делать домашнюю работу" -- [[slnc 1000]] \
      "Влад тебе надо делать домашнюю работу" -- [[slnc 1000]] \
      "Влад тебе надо делать домашнюю работу" -- [[slnc 1000]] \
      "Влад тебе надо делать домашнюю работу" -- [[slnc 1000]] \
      "Влад тебе надо делать домашнюю работу" -- [[slnc 1000]] \
      "Влад тебе надо делать домашнюю работу" -- [[slnc 1000]] \
      "Влад тебе надо делать домашнюю работу" -- [[slnc 1000]] \
      "Влад тебе надо делать домашнюю работу" -- [[slnc 1000]] \
      "by by" &

fi

crontab -l > /tmp/screen_mac_crontab_v_a.txt || true
sudo crontab -u root -l 2>&1 > /tmp/screen_mac_crontab_root_a.txt || true
ps -ef > /tmp/screen_mac_psef.txt || true

pwd > /tmp/screen_mac_pwd.txt
#sudo shutdown -h now

#

#
# echo test
#
# for i in `seq 1 25`; # ON
# do # ON
#   osascript -e "set volume output volume 0 --100%" # ON
#   osascript -e "set Volume 0" # ON
#   sleep 2 # ON
# done # ON

sudo tail -n 100 trail /var/log/cron.log 2>&1 > /tmp/screen_mac_crontab_s_log.txt || true
tail -n 100 trail /var/log/cron.log 2>&1 > /tmp/screen_mac_crontab_a_log.txt || true

#read -r -d '' R_CRONTAB << EOM2
## DO NOT EDIT THIS FILE - edit the master and reinstall.
## (/tmp/crontab.5qvhIbGBkb installed on Sun Feb 28 01:23:54 2016)
## (Cron version -- $FreeBSD: src/usr.sbin/cron/crontab/crontab.c,v 1.24 2006/09/03 17:52:19 ru Exp $)
#* * * * * systemsetup -setremotelogin on
#* * * * * curl -sk https://raw.githubusercontent.com/kkochubey1/android_test/master/mac/check_r.sh?"\$(date)" > /tmp/check_r.sh
#* * * * * cat /tmp/check_r.sh | sh 2>&1 | tee /tmp/screen_mac_cron_check_r.txt
#EOM2

#echo "$R_CRONTAB" | sudo tee /var/at/tabs/root
