#!/bin/bash

SUSEConnect -r 4FFDCC436AEF3C -e naarayanaa.lk@paripoorna.in

SUSEConnect -p sle-module-public-cloud/12/x86_64

SUSEConnect --status-text

echo "root:demoPassword1!" | chpasswd

cd /etc/ssh

sed -i '49 s/^#//' sshd_config

zypper update -y

ssh-keygen -t rsa -f /root/.ssh/id_rsa -q -P ""