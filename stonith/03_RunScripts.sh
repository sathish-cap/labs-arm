#!/bin/bash

# Run this from s03-db-0

#### start execution in s03-db-0 ####

SUSEConnect -r 4FFDCC436AEF3C -e naarayanaa.lk@paripoorna.in

SUSEConnect -p sle-module-public-cloud/12/x86_64

SUSEConnect --status-text

echo '1. SUSE Registration completed successfuly on s03-db-0 ###########################'

echo "root:demoPassword1!" | chpasswd

cd /etc/ssh

sed -i '49 s/^#//' sshd_config

zypper update -y

ssh-keygen -t rsa -f /root/.ssh/id_rsa -q -P ""

#### End execution in s03-db-0 ####

echo '2. SUSE Registration completed successfuly on s03-db-0 ###########################'