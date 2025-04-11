#!/bin/bash

nodes=("rcv1" "rcv2" "rcv3" "rcv4" "rcv5")
username="user"
password="multit00l"

for node in "${nodes[@]}"; do
    echo "Connecting to $node:"
    
    result=$(sshpass -p "$password" ssh -o StrictHostKeyChecking=no "$username@$node" '
        ip=$(ifconfig eth1 2>/dev/null | awk -F "." "/inet / {print \$3}")
        if [ -z "$ip" ]; then
            ip=$(ifconfig bond0 2>/dev/null | awk -F "." "/inet / {print \$3}")
        fi
        echo "$ip"
    ')
    
    if [ -n "$result" ]; then
        echo "Third octet of the IP address on $node is : $result. Pinging default gateway 172.16.$result.254."
        sshpass -p "$password" ssh -o StrictHostKeyChecking=no "$username@$node" "ping -c 4 172.16.$result.254"
    else
        echo "No IP address found for eth1 or bond0"
    fi
    
    echo
done
