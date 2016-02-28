#!/bin/sh

#adb shell "cat /sys/devices/soc.0/f9824900.sdhci/leds/mmc0::/brightness"
#adb shell "cat /sys/devices/soc.0/leds-qpnp-ffffffc0c15ba800/leds/red/brightness"
#adb shell "cat /sys/devices/soc.0/leds-qpnp-ffffffc0c15ba800/leds/blue/brightness"
#adb shell "cat /sys/devices/soc.0/leds-qpnp-ffffffc0c15ba800/leds/green/brightness"
#adb shell "cat /sys/devices/soc.0/f98a4900.sdhci/leds/mmc1::/brightness"
#adb shell "cat /sys/devices/soc.0/qcom,camera-flash.78/leds/torch-light0/brightness"
#adb shell "cat /sys/devices/soc.0/qcom,camera-flash.78/leds/torch-light1/brightness"
#adb shell "cat /sys/devices/soc.0/qpnp-flash-led-ffffffc0c15bac00/leds/led:flash_0/brightness"
#adb shell "cat /sys/devices/soc.0/qpnp-flash-led-ffffffc0c15bac00/leds/led:flash_1/brightness"
#adb shell "cat /sys/devices/soc.0/qpnp-flash-led-ffffffc0c15bac00/leds/led:torch_0/brightness"
#adb shell "cat /sys/devices/soc.0/qpnp-flash-led-ffffffc0c15bac00/leds/led:torch_1/brightness"
#adb shell "cat /sys/devices/soc.0/qpnp-wled-ffffffc0c15ba000/leds/wled/brightness"

adb shell "echo 255 > /sys/class/leds/lcd-backlight/brightness"
adb shell "echo 200 > /sys/devices/soc.0/qpnp-flash-led-ffffffc0c15bac00/leds/led:torch_0/brightness"
adb shell "echo 200 > /sys/devices/soc.0/qpnp-flash-led-ffffffc0c15bac00/leds/led:torch_1/brightness"
adb shell "echo 10000000 > /sys/class/timed_output/vibrator/enable"
