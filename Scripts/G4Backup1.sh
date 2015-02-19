#!/bin/bash

echo "Cron/Scripts/G3/G3Backup.sh begin at $(date)" >> /Scripts/Backup.log

tar -zcvpf /mnt/NAS2/Backups/G4/G4FullBackup-$(date +%Y-%m-%d).tar.gz / --exclude=/mnt --exclude=proc --exclude=sys --exclude=dev/pts --exclude=backups

echo "Cron/Scripts/G3/G3Backup.sh end at $(date)" >> /Scripts/Backup.log

