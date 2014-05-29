#!/bin/bash
# NoIP Synchronizer for OS X
# Tested on OS X Mavericks 10.9

# No-IP uses email as username then for @ use %40
USERNAME=myemail%40myemail.com
PASSWORD=PASSWORD
HOST=myhost.noip.me
WORKDIR=/Users/Shared/Documents/Scripts/noip
LOGFILE=$WORKDIR/logdir/noip.log
CURRENTIP=$WORKDIR/configdir/current_ip
USERAGENT="NoIP Synchronizer bash script for OS X - Version: 0.1.1 - Maintainer: gulivert@gmail.com"

if [ ! -e $CURRENTIP ]; then 
 touch $CURRENTIP
fi

MYIP=$(curl http://unreleased-kollektiv.ch/customer_ip.php)
STOREDIP=$(cat $CURRENTIP)

if [ "$MYIP" != "$STOREDIP" ]; then
 RESULT=$(curl -o "$LOGFILE" -s --user-agent "$USERAGENT" "https://$USERNAME:$PASSWORD@dynupdate.no-ip.com/nic/update?hostname=$HOST&myip=$MYIP")

 LOGLINE="[$(date +"%Y-%m-%d %H:%M:%S")] $RESULT has been synchronized"
 echo $MYIP > $CURRENTIP
else
 LOGLINE="[$(date +"%Y-%m-%d %H:%M:%S")] No IP change"
fi

echo $LOGLINE >> $LOGFILE

exit 0