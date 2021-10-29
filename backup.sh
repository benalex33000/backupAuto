#/bin/bash
backupdate=$(date +%Y-%m-%d)
oldbackupdate=$(date --date="3 days ago" +%Y-%m-%d)
foldersToSave="/root /home" 
backupPath=$HOME/backup

mkdir $HOME/code533
mkdir $backupPath
cp -r $foldersToSave $HOME/code533
find $HOME/code533/ -name "node_modules" -type d -exec rm -rf {} +
zip -r $backupPath/backup-$backupdate.zip $HOME/code533
rm -rf $HOME/code533
rm $backupPath/backup-$oldbackupdate.zip
