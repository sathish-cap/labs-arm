#!/bin/sh
privateIPAddress=ifconfig eth0 | awk '/t addr:/{gsub(/.*:/,"",$2);print$2}'
if [ "$HOSTNAME" = s03-db-0 ]; then
    echo "y
n
$privateIPAddress
224.0.0.1
n
n" | ha-cluster-init
elif [ "$HOSTNAME" = s03-db-1 ]; then
    echo "y
s03-db-0
n" | ha-cluster-join
else
    printf '%s\n' "## VM NAME mismatch - Talk to us please ##"
fi
