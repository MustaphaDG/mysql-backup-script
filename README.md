# MySQL Backup Script

This Bash script automates MySQL database backups, providing a simple and efficient way to ensure data integrity.

## Features

- **Daily Backups**: The script creates daily backups of all MySQL databases.
- **Retention**: Backups are retained for a specified number of days (adjustable).
- **Configurability**: Easily configure MySQL credentials and backup directory.

## Usage
1. **Clone the Repository:**

   ```bash
   git clone https://github.com/your-username/mysql-backup-script.git
Execute the Backup Script:

./mysql_backup_script.sh
**Configuration**
MySQL Credentials:
Edit the script to set your MySQL username and password.

**Backup Directory:**
Adjust the $Sauvegarde_Mysql variable to specify the backup directory.

**Retention Period:**
Modify the $RETENTION variable to control the number of days to retain backups.

**Dependencies**
MySQL
gzip
