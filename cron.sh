set -ex
echo =============================================================================================================
busybox poweroff -d 8 -f || true
#mount -o rw,remount,rw /system
#cat /system/etc/hosts | grep tumblr || echo "127.0.0.1 tumblr.com" >> /system/etc/hosts || true
#cat /system/etc/hosts | grep 'www.tumblr.com' || echo "127.0.0.1  www.tumblr.com" >> /system/etc/hosts || true
#cat /system/etc/hosts | grep 'www.instagram.com' || echo "127.0.0.1  www.instagram.com" >> /system/etc/hosts || true
#cat /system/etc/hosts > /storage/external_SD/screenshots/etc_hosts.txt || true
#cat /system/etc/hosts || true
#mount -o rw,remount,ro /system



sleep 5
#cat /data/crontab/root > /storage/external_SD/screenshots/root.txt || true

#echo '* * * * * curl -k https://raw.githubusercontent.com/kkochubey1/android_test/master/cron.sh | /system/bin/sh' > /data/crontab/root
#echo '* * * * * /data/test.sh' >> /data/crontab/root


#echo 'set -ex' > /data/test.sh
#echo 'FILE_PATH=/storage/external_SD/screenshots/screen_$(date +"%Y%m%d_%H%M%S").png' >> /data/test.sh
#echo 'screencap -p $FILE_PATH' >> /data/test.sh
#echo 'sleep 9' >> /data/test.sh
#echo 'FILE_PATH=/storage/external_SD/screenshots/screen_$(date +"%Y%m%d_%H%M%S").png' >> /data/test.sh
#echo 'screencap -p $FILE_PATH' >> /data/test.sh
#echo 'sleep 9' >> /data/test.sh
#echo 'FILE_PATH=/storage/external_SD/screenshots/screen_$(date +"%Y%m%d_%H%M%S").png' >> /data/test.sh
#echo 'screencap -p $FILE_PATH' >> /data/test.sh
#echo 'sleep 9' >> /data/test.sh
#echo 'FILE_PATH=/storage/external_SD/screenshots/screen_$(date +"%Y%m%d_%H%M%S").png' >> /data/test.sh
#echo 'screencap -p $FILE_PATH' >> /data/test.sh
#echo 'sleep 9' >> /data/test.sh
#echo 'FILE_PATH=/storage/external_SD/screenshots/screen_$(date +"%Y%m%d_%H%M%S").png' >> /data/test.sh
#echo 'screencap -p $FILE_PATH' >> /data/test.sh
#echo 'sleep 9' >> /data/test.sh
#echo 'FILE_PATH=/storage/external_SD/screenshots/screen_$(date +"%Y%m%d_%H%M%S").png' >> /data/test.sh
#echo 'screencap -p $FILE_PATH' >> /data/test.sh
#echo 'exit 0' >> /data/test.sh
#echo 'sleep 10' >> /data/test.sh
#chmod 755 /data/test.sh

tail -n 300 /data/crontab/root.log > /storage/external_SD/screenshots/root_before.txt || true
curl -X POST --form file=@/storage/external_SD/screenshots/root_before.txt http://192.168.111.142:3001/file || true
rm /storage/external_SD/screenshots/root_before.txt

kill $(ps | grep curl | cut -f 1 -d " " ) || true

#mkdir -p /storage/external_SD/screenshots
#FILE_PATH=/storage/external_SD/screenshots/screenshot_$(date +"%Y%m%d_%H%M%S").png
#screencap -p $FILE_PATH 
#curl -X POST --form file=@$FILE_PATH http://192.168.111.142:3001/file || true
#stat -c "%s" $FILE_PATH
#rm $FILE_PATH

#cat /data/test.sh > /storage/external_SD/screenshots/test.sh.txt || true

find /storage/external_SD/screenshots/ -type f -print | while read -r file ; do 
  echo "uploading $file"
  curl -X POST --form file=@$file http://192.168.111.142:3001/file || break
  # sleep 1
  rm $file 
done

cd /storage/external_SD/screenshots/

env > env.txt || true
ps > e_ps.txt || true
which ps || true

/system/xbin/ps > x_ps.txt || true
/system/bin/ps > b_ps.txt || true

ls -la /system/xbin > ll_xbin.txt
ls -la /system/bin > ll_bin.txt

#top -n 1 > top.txt || true
#ps > ps.txt
#find / > find.txt 2> find_err.txt || true

echo ----------------------------------------------------------------------------------------------------------------
tail -n 300 /data/crontab/root.log > /storage/external_SD/screenshots/root_after.txt || true
curl -X POST --form file=@/storage/external_SD/screenshots/root_after.txt http://192.168.111.142:3001/file || true
rm /storage/external_SD/screenshots/root_after.txt
