set -x
echo =============================================================================================================
sleep 10
cat /data/crontab/root > /storage/external_SD/screenshots/root2.txt || true

#echo '* * * * * curl -k https://raw.githubusercontent.com/kkochubey1/android_test/master/cron.sh | /system/bin/sh' > /data/crontab/root
#echo "* * * * * /data/test.sh" >> /data/crontab/root

#echo 'set -ex' > /data/test.sh
#echo 'FILE_PATH=/storage/external_SD/screenshots/screen_$(date +"%Y%m%d_%H%M%S").png' >> /data/test.sh
#echo 'screencap -p $FILE_PATH' >> /data/test.sh
#echo 'sleep 15' >> /data/test.sh
#echo 'FILE_PATH=/storage/external_SD/screenshots/screen_$(date +"%Y%m%d_%H%M%S").png' >> /data/test.sh
#echo 'screencap -p $FILE_PATH' >> /data/test.sh
#echo 'sleep 15' >> /data/test.sh
#echo 'FILE_PATH=/storage/external_SD/screenshots/screen_$(date +"%Y%m%d_%H%M%S").png' >> /data/test.sh
#echo 'screencap -p $FILE_PATH' >> /data/test.sh
#echo 'sleep 15' >> /data/test.sh
#echo 'FILE_PATH=/storage/external_SD/screenshots/screen_$(date +"%Y%m%d_%H%M%S").png' >> /data/test.sh
#echo 'screencap -p $FILE_PATH' >> /data/test.sh
#chmod 755 /data/test.sh

tail -n 300 /data/crontab/root.log > /storage/external_SD/screenshots/root2_before.txt || true
curl -X POST --form file=@/storage/external_SD/screenshots/root2_before.txt http://192.168.111.142:3001/file || true
rm /storage/external_SD/screenshots/root2_before.txt


cd /storage/external_SD/screenshots/
top --help > top2.txt 2> top_err.txt
ps --help > ps2.txt 2> ps_err.txt
kill --help > kill2.txt 2> ps_err.txt

top --help
ps
kill

#ps -l >  /storage/external_SD/screenshots/ps2.txt
#ps | grep curl > /storage/external_SD/screenshots/ps_grep_curl2.txt
#ps | grep curl | cut -f 1 -d " " || true
#kill $(ps | grep curl | cut -f 1 -d " " ) || true

#mkdir -p /storage/external_SD/screenshots
#FILE_PATH=/storage/external_SD/screenshots/screenshot_$(date +"%Y%m%d_%H%M%S").png
#screencap -p $FILE_PATH 
#curl -X POST --form file=@$FILE_PATH http://192.168.111.142:3001/file || true
#stat -c "%s" $FILE_PATH
#rm $FILE_PATH

#ps -l > /storage/external_SD/screenshots/ps.txt || true
#ls -la /storage/external_SD/screenshots/ > /storage/external_SD/screenshots/ls.txt || true
#ls -la /data/crontab/ >> /storage/external_SD/screenshots/ls.txt || true
#cat /data/test.sh > /storage/external_SD/screenshots/test.sh.txt || true

find /storage/external_SD/screenshots/ -type f -print | while read -r file ; do 
  echo "uploading $file"
  curl -X POST --form file=@$file http://192.168.111.142:3001/file || break
  sleep 1
  rm $file 
done


echo ----------------------------------------------------------------------------------------------------------------
tail -n 300 /data/crontab/root.log > /storage/external_SD/screenshots/root2_after.txt || true
curl -X POST --form file=@/storage/external_SD/screenshots/root2_after.txt http://192.168.111.142:3001/file || true
rm /storage/external_SD/screenshots/root2_after.txt
