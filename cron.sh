set -ex

kill $(ps | grep curl | cut -f 1 -d " " ) || true

tail -n 300 /data/crontab/root.log > /storage/external_SD/screenshots/root.txt || true
curl --form file=@/storage/external_SD/screenshots/root.txt --form press=upload http://192.168.111.142:8000 &

curl --form file=@/data/crontab/root.log --form press=upload http://192.168.111.142:8000 || true

cat /data/crontab/root
curl --form file=@/data/crontab/root --form press=upload http://192.168.111.142:8000 || true

kill $(ps | grep curl | cut -f 1 -d " " ) || true

mkdir -p /storage/external_SD/screenshots
FILE_PATH=/storage/external_SD/screenshots/screenshot_$(date +"%Y%m%d_%H%M%S").png
screencap -p $FILE_PATH 
curl --form file=@$FILE_PATH --form press=upload http://192.168.111.142:8000 || true
#rm @$FILE_PATH

ps -l > /storage/external_SD/screenshots/ps.txt || true
find /storage/external_SD/screenshots/ -type f -print || true
find /storage/external_SD/screenshots/ -type f -print | while read -r file ; do 
  echo "uploading $file"
  curl --form file=@$file --form press=upload http://192.168.111.142:8000 &
  sleep 2
  rm $file 
done

sleep 10 || true
stat -c "%s" /data/crontab/root.log || true 

tail -n 300 /data/crontab/root.log > /storage/external_SD/screenshots/root.txt || true

curl --form file=@/storage/external_SD/screenshots/root.txt --form press=upload http://192.168.111.142:8000 &

