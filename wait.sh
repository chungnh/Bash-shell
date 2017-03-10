#! /bin/bash
#waiting input = 0
echo "waiting  0"
read temp
until [ $temp = "0" ]
do
	echo "nhap sai roi"
	read temp
done
echo "nhap chinh xac"
exit
