#!/bin/sh
cd /home/dbadmin/
wget 'https://raw.githubusercontent.com/sathish-cap/labs-arm/master/stonith/scripts/initialsetup.sh'
wget 'https://raw.githubusercontent.com/sathish-cap/labs-arm/master/stonith/scripts/keyexchange.sh'
chmod 777 initialsetup.sh
chmod 777 keyexchange.sh
mkdir /home/dbadmin/binaries 
mkdir /home/dbadmin/software

echo $1 >> hanadownload.sh
if [ $1 = southindia ]; then
    mount -t cifs //others2019.file.core.windows.net/softwares /software  -o vers=3.0,username=others2019,password=UzuOqP7UEjAwjNRlxsC9GI7vmjcFom5ib/misaSkAVBCJzVvUdb44R+5fKw6cMCFLf23EcTfnVW13WFwi8pCtQ==,dir_mode=0777,file_mode=0777,sec=ntlmssp
    echo 'IF Mounted in : ' $1
else
    sudo mount -t cifs //softwarees.file.core.windows.net/softwares  /software  -o vers=3.0,username=softwarees,password=rI4pZWk5IvYU4rt93YjX9fikJBBPPaiXVmhu07rBzHaaFE9s2enYyiqodjvhtuehYi6rJyAmiMGokzKazy+KHg==,dir_mode=0777,file_mode=0777,sec=ntlmssp
    echo 'ELSE Mounted in : ' $1
fi

