#!/bin/sh
SUSEConnect -r 30CC0C89D7E9C8 -e vidya@cloudalliancepartners.com
SUSEConnect -p sle-module-public-cloud/12/x86_64
echo 'root:demoPassword1!' | chpasswd
zypper install sle-ha-release fence-agents -y
zypper update -y
# Key gen steps
cd /etc/ssh
sed -i '49 s/^#//' sshd_config
ssh-keygen -t rsa -f /root/.ssh/id_rsa -q -P ''
