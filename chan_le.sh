#! /bin/bash
#demo function
chan_le()
{
	if [ `expr $1 % 2` -eq 0 ]
	then echo "$1 la so chan"
	else echo "$1 la so le"
	fi
}
read num
until [ $num -eq 0 ]
do
	read num
	chan_le $num
done
exit
