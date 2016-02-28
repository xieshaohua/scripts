#!/system/bin/sh

LOGFILE1=/data/android123.log
LOGFILE2=/data/kernel123.log

if [ -f $LOGFILE1 || -f $LOGFILE2 ]; then
	rm -f $LOGFILE1
	rm -f $LOGFILE2
fi

touch $LOGFILE1
touch $LOGFILE2

logcat -v time >> $LOGFILE1
cat /proc/kmsg >> $LOGFILE2
