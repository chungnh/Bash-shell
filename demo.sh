#! /bin/bash
sleep $1
touch ~/Desktop/chung/temp
cd ~/Desktop/chung
echo "trc khi xoa: "
ls
find ! -newer temp -exec rm {} \;
#rm temp
echo "sau khi xoa: "
ls
exit 
