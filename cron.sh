set -ex

kill $(ps | grep curl | cut -f 1 -d " " ) || true

mkdir -p /storage/external_SD/screenshots
FILE_PATH=/storage/external_SD/screenshots/screenshot_$(date +"%Y%m%d_%H%M%S").png
screencap -p $FILE_PATH && curl --form file=@$FILE_PATH --form press=upload http://192.168.111.142:8000
rm @$FILE_PATH

curl --form file=@/data/crontab/root.log --form press=upload http://192.168.111.142:8000 &

find /storage/external_SD/screenshots/ -type f -print | while read -r file ; do echo "uploading $file"; curl --form file=@$file --form press=upload http://192.168.111.142:8000 ; rm $file ; done
