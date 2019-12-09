#!/bin/bash
SUSEConnect -r 4FFDCC436AEF3C -e naarayanaa.lk@paripoorna.in
SUSEConnect -p sle-module-public-cloud/12/x86_64
echo 'root:demoPassword1!' | chpasswd
echo 'Key file copied from s03-db-0 to s03-db-1'
zypper install sle-ha-release fence-agents -y
zypper update -y
# Key gen steps
cd /etc/ssh
sed -i '49 s/^#//' sshd_config
ssh-keygen -t rsa -f /root/.ssh/id_rsa -q -P ''