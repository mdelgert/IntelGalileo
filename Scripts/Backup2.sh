#!/bin/sh
############################################################################################################
#
# Backup1.sh
#
# Author: Matthew Elgert
# Date: 2/19/2015
############################################################################################################

# Define nas name
nas_name="NAS1"

# Get host name
hostname=$(hostname -s)

#Generate time stamp for backup file
date_format=$(date +%Y%m%dl%M%S)

# What to backup. 
backup_directory="/"

# What to exclude. 
exclude_folders=" --exclude=/mnt --exclude=/proc --exclude=/sys --exclude=/dev --exclude=/tmp --exclude=/media"
# exclude_folders=" --exclude=/mnt --exclude=/proc --exclude=/sys --exclude=/dev --exclude=/tmp --exclude=/media --exclude=/var/log"

# Archive file name
archive_file_name="$hostname$date_format.tgz"

# Archive file destination log name
archive_file_log="$hostname$date_format.log"

# Where to backup to.
dest="/mnt/$nas_name/Backups/$hostname"

# backup command 
backup_command="tar vczf $dest/$archive_file_name $backup_directory $exclude_folders"

echo "Backup command=$backup_command"

# Print start status message.
echo "Backing up $backup_directory to $dest/$archive_file_name"
date
echo

# Run the backup command
$backup_command  > $dest/$archive_file_log

# Print end status message.
echo
echo "Backup finished"
date

# Long listing of files in $dest to check file sizes.
#ls -lh $dest

# Link - https://help.ubuntu.com/lts/serverguide/backup-shellscripts.html
