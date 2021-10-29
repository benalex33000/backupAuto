# Description

BackupAuto is a bash script that automatically backs up given folders in zip format and delete all the node_modules of your backups folders.
It also allows you to delete backups older than 3 days.

## Installation

### 1) Install crontab for launch automatically this script.

For debian
```bash
sudo apt-get install cron
```
For Fedora/CentOS
```bash
sudo yum install cronie
```
For Gentoo
```bash
sudo emerge -av sys-process/cronie
```

### 2) Install zip to compress folders

For debian
```bash
sudo apt-get install zip
```
For Fedora/CentOS
```bash
sudo yum install zip
```
For Gentoo
```bash
sudo emerge -av sys-process/zip
```

### 3) Download this script
```bash
sudo su
cd
wget https://github.com/benalex33000/backupAuto/blob/main/backup.sh
chmod 700 backup.sh
```
### 4) Adding the crontab config
#### Open the crontab config
```bash
sudo crontab -e
```
#### Add this line at the end of the file for daily backup at 5:05 am
```bash
5 5 * * * /root/backup.sh
```

## Configure
#### Open the script file 
```bash
nano /root/backup.sh
```
#### Change the files to be backed up
```bash
# Customize the folders to be backed up remplace (here we save the /home and /root folders)
foldersToSave="/root /home"
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
