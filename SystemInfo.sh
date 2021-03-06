#!/bin/bash

LOGFILE=/home/server/systemInfo.txt

# LogFile is the path to a certain text located on my Pc

HOSTNAME=$(hostname)
DATE=$(date "+%d-%m-%Y %H:%M:%S")
SYSTEMLOAD=$(uptime | awk '{print $8,$9,$10,$11,$12}')
CPULOAD=$(top -b -n 2-d1 | grep "Cpu(s)" | tail -n1 | awk '{print $2}')
MEMORYUSAGE=$(free -m | grep "Mem"| awk '{print $2,$3}')

echo "$DATE $HOSTNAME LoadAverage: $SYSTEMLOAD CPU: $CPULOAD Memory: $MEMORYUSAGE" >> $LOGFILE
echo "script has been completed you can your information at /home/server/systemsInfo.txt."
