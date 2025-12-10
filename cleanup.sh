#!/bin/bash

LOG_DIR="/var/log"
DAYS=7
REPORT="/home/$USER/cleanup_report.log"

echo "---- $(date) ----" >> $REPORT
echo "Cleaning logs older than $DAYS days in $LOG_DIR" >> $REPORT

#find $LOG_DIR -type f -name "*.log" -mtime +$DAYS -print -delete >> $REPORT 2>&1
find /var/log -type f -name "*.log" -mtime +7 -print

echo "cleanup done" >> $REPORT

echo "" >> $REPORT
