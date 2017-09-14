/sbin/iptables -t nat -F
/sbin/iptables -F
echo 1 > /proc/sys/net/ipv4/ip_forward
# $1 interface which connected to network and $2 is interface on which local network is going to establish
/sbin/iptables -t nat -A POSTROUTING -o wlan0 -j MASQUERADE
/sbin/iptables -A FORWARD -i wlan0 -o $1 -m state --state RELATED,ESTABLISHED -j ACCEPT
/sbin/iptables -A FORWARD -i $1 -o wlan0 -j ACCEPT
echo "nating done"
