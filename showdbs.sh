#! /bin/bash
#sh showdb + pass
login=$(mysql -u root -p"$1" -s<<QUERY_INPUT
	show databases;
QUERY_INPUT
)
echo "$login"
