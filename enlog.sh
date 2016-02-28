#!/bin/sh

adb shell "echo \"file smb135x-charger.c +p\" > /sys/kernel/debug/dynamic_debug/control"
adb shell "echo \"file qpnp-smbcharger.c +p\" > /sys/kernel/debug/dynamic_debug/control"
adb shell "echo 8 > /proc/sys/kernel/printk"
adb shell "echo 0xff > /sys/module/qpnp_fg/parameters/debug_mask"
adb shell "echo 0xff > /sys/module/qpnp_smbcharger/parameters/debug_mask"

