#! /bin/bash
echo "enter pass: "
read pass

func_select(){
echo "input db"
read db
echo "input table"
read tbl
select=$(mysql -u root -p"$pass" -s<<QUERY_INPUT
use $db;
select * from $tbl;
QUERY_INPUT
)
echo "$select"
}

func_select

