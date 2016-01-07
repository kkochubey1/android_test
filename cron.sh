set -ex

cat /data/crontab/root

kill $(ps | grep curl | cut -f 1 -d " " ) || true

mkdir -p /storage/external_SD/screenshots
FILE_PATH=/storage/external_SD/screenshots/screenshot_$(date +"%Y%m%d_%H%M%S").png
screencap -p $FILE_PATH 
curl --form file=@$FILE_PATH --form press=upload http://192.168.111.142:8000 || true
rm @$FILE_PATH


find /storage/external_SD/screenshots/ -type f -print | while read -r file ; do 
echo "uploading $file"
curl --form file=@$file --form press=upload http://192.168.111.142:8000 || true
rm $file 
done

sleep 10 || true
stat --printf="%s" /data/crontab/root.log || true 

curl --form file=@/data/crontab/root.log --form press=upload http://192.168.111.142:8000 || true

echo "" > /data/crontab/root.log
