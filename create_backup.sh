#!/bin/bash

if [ $# -ne 1 ]
then
    echo "usage: $0 DEST"
    exit 1
fi

export DEST_DIR=$1
export BACKUP_DATE=$(date +%F)
export BACKUP_DIR="backups/${BACKUP_DATE}"
export FLAGS="-PRiva --backup-dir=${BACKUP_DIR}"
# P
#   --partial --progress
#   
#   keep partially tranferred files
#
#   show progress
#
# R
#   relative
#
# i
#   output change summary
#
# v
#   verbose
#
# a
#   archive
#
#   -r recursive
#   -l links
#   -p perms
#   -t time
#     keeps mod time of src
#   -o owner
#   -g group
#   -D devices & specials
#
# backup-dir
#   files being updated in dest will be moved to backup-dir
#
#   backup-dir is relative to dest

source include.sh

echo ${INCLUDE}
