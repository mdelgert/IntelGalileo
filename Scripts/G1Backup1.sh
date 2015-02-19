#!/bin/bash

echo "Cron/Scripts/G1/G1Backup.sh begin at $(date)"

# tar -zcvpf /mnt/NAS2/Backups/G1/G1FullBackup-$(date +%Y-%m-%d).tar.gz / --exclude=/mnt --exclude=proc --exclude=sys --exclude=dev/pts --exclude=backups

tar -zcvpf /mnt/NAS2/Backups/G1/G1ScriptsBackup-$(date +%Y-%m-%d).tar.gz /Scripts

echo "Cron/Scripts/G1/G1Backup.sh end at $(date)"

# Make file executable chmod + x G1Backup1.sh
# Add to contab
# 50 17 * * * /Scripts/G1/G1Backup1.sh