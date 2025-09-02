#!/bin/sh
# 99-custom.sh 就是immortalwrt固件首次启动时运行的脚本 位于固件内的/etc/uci-defaults/99-custom.sh
# Log file for debugging
uci set network.lan.ipaddr='10.16.18.99'
uci set network.lan.netmask='255.255.255.0'

exit 0
