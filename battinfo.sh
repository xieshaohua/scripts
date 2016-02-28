#!/bin/sh
adb shell "while [ 1 ]; do clear;cat /sys/class/power_supply/battery/uevent;sleep 2;done"
