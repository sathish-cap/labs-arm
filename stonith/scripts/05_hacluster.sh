#!/bin/sh
if [ "$HOSTNAME" = s03-db-0 ]; then
    echo "ha-cluster-init on >> s03-db-0"
    ha-cluster-init -q
elif [ "$HOSTNAME" = s03-db-1 ]; then
    echo "ha-cluster-join on >> s03-db-1"
    ha-cluster-join -q
else
    printf '%s\n' "## Cluster VM NAME mismatch - Talk to us please ##"
fi