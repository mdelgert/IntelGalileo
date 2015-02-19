#!/bin/bash

echo "Cron/Scripts/G2/G2Backup.sh begin at $(date)" >> /Scripts/Backup.log

tar -zcvpf /mnt/NAS2/Backups/G2/G2FullBackup-$(date +%Y-%m-%d).tar.gz / --exclude=/mnt --exclude=proc --exclude=sys --exclude=dev/pts --exclude=backups

echo "Cron/Scripts/G2/G2Backup.sh end at $(date)" >> /Scripts/Backup.log
