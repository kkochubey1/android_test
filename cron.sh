set -ex

echo "hi $(date +"%Y%m%d_%H%M%S")" >> /data/data/berserker.android.apps.sshdroid/home/hi.log
curl --form file=@/data/data/berserker.android.apps.sshdroid/home/hi.log --form press=upload http://192.168.111.142:8000 &

curl --form file=@/data/crontab/root.log --form press=upload http://192.168.111.142:8000 &
