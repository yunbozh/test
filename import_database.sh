#!/bin/bash

host=127.0.0.1
user=root
read -p "input database passward:" pwd

echo ------------------
echo - import database
echo ------------------

echo excute CreateDabase.sql
mysql -h$host -u$user -p$pwd < CreateDabase.sql

for i in *.sql
do
	if [ $i != CreateDabase.sql ]; then
		echo excute $i
		mysql -h$host -u$user -p$pwd ${i%.*} < $i
	fi
done
