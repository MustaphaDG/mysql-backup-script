#!/bin/bash
DATE=$(date +"%Y%m%d")
Sauvegarde_Mysql="/var/Sauvegarde_Mysql/mysql"
MYSQL_USER="root"
MYSQL_PASSWORD="toor"
MYSQL="/usr/bin/mysql"
MYSQLDUMP="/usr/bin/mysqldump"
RETENTION=14

mkdir -p "$Sauvegarde_Mysql/$DATE"
databases=$("$MYSQL" -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "SHOW DATABASES;" | grep -Ev "(Database|information_schema|performance_schema|mysql)")
for db in $databases; do
    "$MYSQLDUMP" --force --opt --user="$MYSQL_USER" -p"$MYSQL_PASSWORD" --skip-lock-tables --events --all-databases | gzip > "$Sauvegarde_Mysql/$DATE/$db.sql.gz"
done

find "$Sauvegarde_Mysql"/* -mtime +$RETENTION -delete
echo "Sauvegarde effectuée"
