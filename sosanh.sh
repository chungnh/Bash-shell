#! /bin/bash
#so sanh 2 so
if [ $1 -eq $2 ]
then 
	echo "$1 bang $2"
else
	if [ $1 -lt $2 ]
	then 
		echo "$1 nho hon $2"
	else
		echo "$1 lon hon $2"
	fi
fi
exit
