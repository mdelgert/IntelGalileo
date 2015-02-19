#!/bin/sh
########################################################################
#
# Nmap network scanner script
#
# Author: Matthew Elgert
#
# Date: 2/19/2015
#
########################################################################

# What to scan example values: 192.168.1.1-254 or 192.168.1.0/24
scan_range="192.168.1.0/24"

# Scan log location
scan_log_location="/mnt/NAS2/NetworkScans/G1/"

# Scan log date prefix
date_format=$(date +%Y%m%dl%M%S)

# Scan log name
scan_log_name="G1PingScan.log"

# Full scan log name and location
scan_log_name_location=$scan_log_location$date_format$scan_log_name

# Ping scan
nmap -sn $scan_range > $scan_log_name_location

########################################################################
# Related links
# https://github.com/mdelgert/IntelGalileo
# https://help.ubuntu.com/lts/serverguide/backup-shellscripts.html
# http://nmap.org
# http://www.cyberciti.biz/networking/nmap-command-examples-tutorials
# Note: Script must be executable to run.
# chmod +x PingNetworkScan.sh
########################################################################
