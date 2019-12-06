#!/bin/bash
cd /root/.ssh/
echo "yes \n" | ssh-copy-id -i id_rsa root@s03-db-0
echo "yes \n" | ssh-copy-id -i id_rsa root@s03-db-1