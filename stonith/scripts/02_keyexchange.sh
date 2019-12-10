#!/bin/sh
cd /root/.ssh/
if [ "$HOSTNAME" = s03-db-0 ]; then
    ssh-copy-id -i id_rsa root@s03-db-1
    echo 'Key file copied from s03-db-0 to s03-db-1'
else
    ssh-copy-id -i id_rsa root@s03-db-0
    echo 'Key file copied from s03-db-1 to s03-db-0'
fi