ip addr add 172.16.10.5/24 dev eth1
ip route add 172.16.20.0/24 via 172.16.10.254
ip route add 172.16.30.0/24 via 172.16.10.254