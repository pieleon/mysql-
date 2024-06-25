#!/bin/bash
TIMESTAMP=$(date +%F_%T)
BACKUP_DIR="/path/to/backup"
MYSQL_USER="user"
MYSQL_PASSWORD="password"
MYSQL_DATABASE="database"

mysqldump -u $MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE > $BACKUP_DIR/backup_$TIMESTAMP.sql
gzip $BACKUP_DIR/backup_$TIMESTAMP.sql
