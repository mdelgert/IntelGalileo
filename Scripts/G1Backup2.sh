#!/bin/sh
############################################################################################################
#
# Backup script.
#
############################################################################################################

# What to backup. 

# backup_files="/home /var/spool/mail /etc /root /boot /opt"

backup_files="/Scripts"

# Where to backup to.
dest="/mnt/NAS2/Backups/G1"

# Create archive filename.
day=$(date +%A)

# http://unix.stackexchange.com/questions/136741/how-to-understand-the-unix-time-format
# Unix time stamp
# date +%s

# http://stackoverflow.com/questions/1401482/yyyy-mm-dd-format-date-in-shell-script
# $(date +%F)

# ISO Date 
# date -I

# date "+%Y%m%dl%M%S" 

# dateFormat=$(date +%Y-%m-%d)

dateFormat=$(date +%Y%m%dl%M%S)

hostname=$(hostname -s)

# archive_file="$hostname-$day.tgz"

# archive_file="$hostname-$dateFormat.tgz"

archive_file="$hostname$dateFormat.tgz"

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

# Backup the files using tar.
# tar czf $dest/$archive_file $backup_files

# tar -zcvpf $dest/$archive_file $backup_files

tar vczf $dest/$archive_file $backup_files

# Print end status message.
echo
echo "Backup finished"
date

# Long listing of files in $dest to check file sizes.
ls -lh $dest

# Link - https://help.ubuntu.com/lts/serverguide/backup-shellscripts.html
