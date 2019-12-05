#!/bin/bash

sudo sh SUSEConnect -r 4FFDCC436AEF3C -e naarayanaa.lk@paripoorna.in

sudo sh SUSEConnect -p sle-module-public-cloud/12/x86_64

sudo sh echo 'root:demoPassword1!' | chpasswd

sudo sh cd /etc/ssh

sudo sh sed -i '49 s/^#//' sshd_config

sudo sh zypper update -y

sudo sh ssh-keygen -t rsa -f /root/.ssh/id_rsa -q -P ''