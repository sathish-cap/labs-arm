#!/bin/sh
cd /home/dbadmin/
wget 'https://raw.githubusercontent.com/sathish-cap/labs-arm/master/stonith/scripts/01_initialsetup.sh'
wget 'https://raw.githubusercontent.com/sathish-cap/labs-arm/master/stonith/scripts/02_keyexchange.sh'
wget 'https://raw.githubusercontent.com/sathish-cap/labs-arm/master/stonith/scripts/03_preparedisk.sh'
wget 'https://raw.githubusercontent.com/sathish-cap/labs-arm/master/stonith/scripts/04_copyhana.sh'
wget 'https://raw.githubusercontent.com/sathish-cap/labs-arm/master/stonith/scripts/05_copyhanadatkey.sh'
chmod +x 01_initialsetup.sh
chmod +x 02_keyexchange.sh
chmod +x 03_preparedisk.sh
chmod +x 04_copyhana.sh
chmod +x 05_copyhanadatkey.sh
mkdir /home/dbadmin/binaries
mkdir /home/dbadmin/software
mylocation=$1
sed -i '2 s/^#Location=/Location='"${mylocation}"'/' 03_preparedisk.sh
