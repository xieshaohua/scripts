#!/system/bin/sh

LOGFILE=/data/batt123.log

if [ -f $LOGFILE ]; then
	rm -f $LOGFILE
fi

touch $LOGFILE

while [ true ]; do
	date "+%Y-%m-%d %H:%M:%S" >> $LOGFILE
	cat /sys/class/power_supply/battery/uevent >> $LOGFILE
	sleep 2
done
