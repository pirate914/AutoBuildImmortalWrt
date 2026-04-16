# LAN口设置静态IP
uci set network.lan.proto='static'

uci set network.lan.ipaddr='10.16.18.99'
uci set network.lan.netmask='255.255.255.0'

exit 0
