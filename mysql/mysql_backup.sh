#!/bin/bash

# MySQL Database Information
db_name="your_database_name"
db_user="your_mysql_user"
db_password="your_mysql_password"

# Backup Folder and Prefix
backup_folder="/path/to/backup/folder"
backup_prefix="$(date +'%H-%M-%d/%m/%y')"

# Healthchecks.io URL for backup success
HEALTHCHECKS_URL_SUCCESS="https://hc-ping.com/YOUR_SUCCESS_PING_ENDPOINT"

# Healthchecks.io URL for backup failure
HEALTHCHECKS_URL_FAILURE="https://hc-ping.com/YOUR_FAILURE_PING_ENDPOINT"

# Create backup filename
backup_file="${backup_prefix}_${db_name}_backup.sql"

# Perform MySQL Database Backup
echo "Backing up MySQL database: $db_name to $backup_file"
mysqldump -u "$db_user" -p"$db_password" "$db_name" > "$backup_folder/$backup_file"

# Check if backup was successful
if [ $? -eq 0 ]; then
  echo "Backup completed successfully."
  
  # Send a success ping to Healthchecks.io
  curl -fsS -m 10 --retry 3 -o /dev/null "$HEALTHCHECKS_URL_SUCCESS"
else
  echo "Error: Backup failed."
  
  # Send a failure ping to Healthchecks.io
  curl -fsS -m 10 --retry 3 -o /dev/null "$HEALTHCHECKS_URL_FAILURE"
fi
