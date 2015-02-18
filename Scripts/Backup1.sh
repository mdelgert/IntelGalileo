#!/bin/bash

tar -zcvpf /mnt/G2/Backups/G1FullBackup-$(date +%Y-%m-%d).tar.gz / --exclude=/mnt --exclude=proc --exclude=sys --exclude=dev/pts --exclude=backups 

# How To Do A Full Backup Using The tar Command - http://www.aboutdebian.com/tar-backup.htm
# Put date into backup .tar.gz filename tar cfz backup-$(date +%Y-%m-%d).tar.g - http://superuser.com/questions/256378/put-date-into-backup-tar-gz-filename
# Make file executable chmod +x /Scripts/Backup1.sh