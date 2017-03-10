#! /bin/bash
#demo my sql
echo "enter your password: "
read pass
until [ $pass = "chungs2k2" ]
do
	echo "fail, retry"
	read pass	
done
echo "hello chung"
