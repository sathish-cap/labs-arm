#!/bin/bash
cd /home/dbadmin/binaries/DATA_UNITS/HDB_SERVER_LINUX_X86_64
echo "1
2



S03


4




demoPassword1!
demoPassword1!
demoPassword1!
demoPassword1!




demoPassword1!
demoPassword1!

y" | ./hdblcm

su - s03adm
hdbnsutil -reconfig --hostnameResolution=global