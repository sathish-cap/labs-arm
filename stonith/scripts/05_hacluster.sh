#!/bin/sh
if [ "$HOSTNAME" = s03-db-0 ]; then
    ha-cluster-init -q
elif [ "$HOSTNAME" = s03-db-1 ]; then
    ha-cluster-join -q
else
    printf '%s\n' "## Cluster VM NAME mismatch - Talk to us please ##"
fi