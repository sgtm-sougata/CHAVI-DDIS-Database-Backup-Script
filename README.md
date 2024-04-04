# CHAVI-DDIS Database Backup Script

This script is designed to automate the daily backup process of a CHAVI-DDIS database. It utilizes `mysqldump` utility to create a backup of the specified CHAVI-DDIS database along with its routines and events.

## Prerequisites

- CHAVI-DDIS Server installed on your system.
- The CHAVI-DDIS bin directory should be added to the system PATH variable.
- Ensure you have necessary permissions to execute the script and access the CHAVI-DDIS database.

## Setup Instructions

1. Modify the script variables to match your environment:
   - `mysql_user`: CHAVI-DDIS username for authentication.
   - `mysql_password`: CHAVI-DDIS password for authentication.
   - `database_name`: Name of the database you want to backup.
   - `backup_file_path`: Path where you want to store the backup file.
   - `log_file_path`: Path where you want to store the backup logs.
   - `backup_name`: Name prefix for the backup file.
   
2. Schedule the script to run daily:
   - You can use the system scheduler (like Task Scheduler in Windows or cron jobs in Linux) to execute this script at your preferred time every day.

## Script Explanation

- The script first sets up the necessary variables including CHAVI-DDIS credentials, database name, backup file path, and backup log path.
- It then generates the current date in the `YYYY-MM-DD` format.
- Using `mysqldump` utility, it creates a backup of the specified CHAVI-DDIS database along with its routines and events. The backup file is named with the prefix specified and the current date.
- If the backup process encounters any errors, it logs the failure along with the timestamp in the specified log file. Otherwise, it logs the successful backup creation.

## Troubleshooting

- Ensure that CHAVI-DDIS Server is running and accessible from the machine where the script is executed.
- Verify the CHAVI-DDIS credentials provided in the script.
- Double-check the paths specified for backup file and log file to ensure they exist and have appropriate permissions.

