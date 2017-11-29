#!/bin/bash

if [ $# -ne "1" ]; then
  echo "Error: Expects one argument."
  echo "Usage: $0 DRIVE, where DRIVE is the backup mount point."
  echo "Example: $0 /media/hdd"
fi

DIR=Documents
DRIVE=$1
LOG=$HOME/backup.log
SEP="-------------------------------"

echo "0 23 * * * echo '$SEP' >> $LOG && date >> $LOG && rsync -arvzP --delete $HOME/$DIR/ $DRIVE/$DIR/ >>$LOG 2>&1" | crontab
