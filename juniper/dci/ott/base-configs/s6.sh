ip addr add 172.16.30.6/24 dev eth1
ip route add 172.16.10.0/24 via 172.16.30.254
ip route add 172.16.20.0/24 via 172.16.30.254