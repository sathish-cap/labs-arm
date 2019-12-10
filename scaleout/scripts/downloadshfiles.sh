#!/bin/sh
cd /home/dbadmin/
wget 'https://raw.githubusercontent.com/sathish-cap/labs-arm/master/scaleout/scripts/01_initialsetup.sh'
wget 'https://raw.githubusercontent.com/sathish-cap/labs-arm/master/scaleout/scripts/02_copyhana.sh'
wget 'https://raw.githubusercontent.com/sathish-cap/labs-arm/master/scaleout/scripts/03_installhana.sh'
chmod +x 01_initialsetup.sh
chmod +x 02_copyhana.sh
chmod +x 03_installhana.sh
mkdir /home/dbadmin/binaries
mkdir /home/dbadmin/software
mylocation=$1
sed -i '2 s/^#Location=/Location='"${mylocation}"'/' 01_initialsetup.sh