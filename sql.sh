#! /bin/bash
echo "enter password"
read pass

select1(){		
echo "input database_name"
read db
echo "input table_name"
read tbl
select=$(mysql -u root -p"$1" -s<<QUERY_INPUT
use $db;
select * from $tbl;
QUERY_INPUT
)
echo "$select"
}

select2(){
echo "input database_name"
read db
echo "input table_name"
read tbl
echo "in put id"
read id
echo "in put new name"
read name
echo "input new age"
read age
update=$(mysql -u root -p"$1" -s<<QUERY_INPUT
use $db;
update $tbl set name="$name", age="$age" where id="$id";
QUERY_INPUT
)
}

select3(){
echo "input database_name"
read db
echo "input table_name"
read tbl
echo "in put id"
read id
delete=$(mysql -u root -p"$1" -s<<QUERY_INPUT
use $db;
delete from $tbl where id="$id";
QUERY_INPUT
)
}

select4(){
echo "input database_name"
read db
echo "input table_name"
read tbl
echo "in put id"
read id
echo "in put name"
read name
echo "in put age"
read age
insert=$(mysql -u root -p"$1" -s<<QUERY_INPUT
use $db;
insert into $tbl values("$id","$name","$age");
QUERY_INPUT
)
}

while [ 1 ]
do
	echo "1.show 1 table"
	echo "2.edit"
	echo "3.delete"
	echo "4.insert"
	read choice
	case $choice in
		"1") select1 $pass;;
		"2") select2 $pass;;
   		"3") select3 $pass;;
		"4") select4 $pass;;
		*) echo "chon sai roi";;
	esac
done

#-N  ko hien thi ten cot
