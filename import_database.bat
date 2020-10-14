@echo off

set host=127.0.0.1
set user=root
set /p pwd=input database passward:

echo ------------------
echo - import database
echo ------------------

echo excute CreateDabase.sql
mysql -h%host% -u%user% -p%pwd% < CreateDabase.sql

for /f %%i in ('dir /b/o:d *.sql') do (
	
	if %%i NEQ CreateDabase.sql (
		echo excute %%i
		mysql -h%host% -u%user% -p%pwd% %%~ni < %%i
	)
)

pause


