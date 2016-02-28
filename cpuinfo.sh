#!/bin/sh

CPUPATH=/sys/bus/cpu/devices//sys/bus/cpu/devices/cpu0/cpufreq

adb shell "while [ true ]; do \
		clear; \
		cat /sys/bus/cpu/devices/cpu0/cpufreq/cpuinfo_cur_freq; \
		cat /sys/bus/cpu/devices/cpu1/cpufreq/cpuinfo_cur_freq; \
		cat /sys/bus/cpu/devices/cpu2/cpufreq/cpuinfo_cur_freq; \
		cat /sys/bus/cpu/devices/cpu3/cpufreq/cpuinfo_cur_freq; \
		cat /sys/bus/cpu/devices/cpu4/cpufreq/cpuinfo_cur_freq; \
		cat /sys/bus/cpu/devices/cpu5/cpufreq/cpuinfo_cur_freq; \
		cat /sys/bus/cpu/devices/cpu6/cpufreq/cpuinfo_cur_freq; \
		cat /sys/bus/cpu/devices/cpu7/cpufreq/cpuinfo_cur_freq; \
		sleep 2; \
		done"
