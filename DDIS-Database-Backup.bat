rem path to mysql server bin folder
cd /d "C:\Program Files\MySQL\MySQL Server 5.7\bin"

rem credentials to connect to mysql server
set mysql_user=username
set mysql_password=password
set database_name=chaviro_new

rem backup file name generation
set backup_file_path=D:\CHAVI-DDIS\MySql-Backup\Backup-file
set log_file_path=D:\CHAVI-DDIS\MySql-Backup\logs
set backup_name=CHAVI-DDIS-Backup

REM Get the current date in YYYY-MM-DD format
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set "current_date=%%I"
set "current_date=%current_date:~0,4%-%current_date:~4,2%-%current_date:~6,2%"

rem backup creation
mysqldump --user=%mysql_user% --password=%mysql_password% --databases chaviro_new --routines --events --result-file="%backup_file_path%\%backup_name%_%current_date%.sql"

if %ERRORLEVEL% neq 0 (
    echo  %date%-%time%: Backup failed: error during dump creation >> "%log_file_path%\CHAVI-DDIS-backup-log.txt"
) else (
    echo  %date%-%time%: Backup successful: dump created >> "%log_file_path%\CHAVI-DDIS-backup-log.txt"
)
