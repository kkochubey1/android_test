set -ex
echo =============================================================================================================

tail -n 300 /data/crontab/root.log > /storage/external_SD/screenshots/root_before.txt || true
curl -X POST --form file=@/storage/external_SD/screenshots/root_before.txt http://192.168.111.142:3001/file || true
rm /storage/external_SD/screenshots/root_before.txt

kill $(ps | grep curl | cut -f 1 -d " " ) || true

mkdir -p /storage/external_SD/screenshots
FILE_PATH=/storage/external_SD/screenshots/screenshot_$(date +"%Y%m%d_%H%M%S").png
screencap -p $FILE_PATH 
curl -X POST --form file=@$FILE_PATH http://192.168.111.142:3001/file || true
#rm $FILE_PATH
stat -c "%s" $FILE_PATH

ps -l > /storage/external_SD/screenshots/ps.txt || true

find /storage/external_SD/screenshots/ 

find /storage/external_SD/screenshots/ -type f -print | while read -r file ; do 
  echo "uploading $file"
  curl -X POST --form file=@$file http://192.168.111.142:3001/file || true
  sleep 1
  rm $file 
done

tail -n 300 /data/crontab/root.log > /storage/external_SD/screenshots/root_after.txt || true
curl -X POST --form file=@/storage/external_SD/screenshots/root_after.txt http://192.168.111.142:3001 || true
rm /storage/external_SD/screenshots/root_after.txt

