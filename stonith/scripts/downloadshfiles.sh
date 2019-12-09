#!/bin/sh
cd /home/dbadmin/
wget 'https://raw.githubusercontent.com/sathish-cap/labs-arm/master/stonith/scripts/initialsetup.sh'
wget 'https://raw.githubusercontent.com/sathish-cap/labs-arm/master/stonith/scripts/keyexchange.sh'
wget 'https://raw.githubusercontent.com/sathish-cap/labs-arm/master/stonith/scripts/hanadownload.sh'
chmod 777 initialsetup.sh
chmod 777 keyexchange.sh
chmod 777 hanadownload.sh
mkdir /home/dbadmin/binaries
mkdir /home/dbadmin/software
./hanadownload.sh $1
# echo '#!/bin/sh \n reslocation = ' $1 >> hanadownload.sh
