#!/bin/bash
cd /root/.ssh/
if [ "$HOSTNAME" = s03-db-0 ]; then
    ssh-copy-id -i id_rsa root@s03-db-1
else
    ssh-copy-id -i id_rsa root@s03-db-0
fi