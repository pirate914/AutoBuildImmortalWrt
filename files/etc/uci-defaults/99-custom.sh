#!/bin/sh
# 99-custom.sh 就是immortalwrt固件首次启动时运行的脚本 位于固件内的/etc/uci-defaults/99-custom.sh
# Log file for debugging
# LAN口设置静态IP
uci set network.lan.proto='static'
# 多网口设备 支持修改为别的ip地址,别的地址应该是网关地址，形如192.168.xx.1 项目说明里都强调过。
# 大家不能胡乱修改哦 比如有人修改为192.168.100.55 这是错误的理解 这个项目不能提前设置旁路地址
# 旁路的设置分2类情况,情况一是单网口的设备,默认是DHCP模式，ip应该在上一级路由器里查看。之后进入web页在设置旁路。
# 情况二旁路由如果是多网口设备，也应当用网关访问网页后，在自行在web网页里设置。总之大家不能直接在代码里修改旁路网关。千万不要徒增bug啦。
uci set network.lan.ipaddr='10.16.18.99'
uci set network.lan.netmask='255.255.255.0'

exit 0
