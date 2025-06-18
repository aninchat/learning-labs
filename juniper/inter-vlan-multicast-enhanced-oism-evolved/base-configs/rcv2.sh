ip addr add 172.16.20.2/24 dev eth1
ip route add 172.16.10.0/24 via 172.16.20.254
ip route add 172.16.30.0/24 via 172.16.20.254