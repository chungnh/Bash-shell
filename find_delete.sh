#! /bin/sh
input_time=3
current_time=`date +%s`
echo "thoi gian hien tai: $current_time"
echo "trc khi xoa"
ls /home/chungnh/Desktop/chung
find /home/chungnh/Desktop/chung/* -mmin +1 -exec rm {} \;
echo "sau khi xoa"
ls /home/chungnh/Desktop/chung

