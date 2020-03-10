#!/bin/bash
#Location=
SUSEConnect -r 30CC0C89D7E9C8 -e vidya@cloudalliancepartners.com
echo 'root:demoPassword1!' | chpasswd
zypper update -y
if [ "$Location" = southindia ]; then
    mount -t cifs //others2019.file.core.windows.net/softwares /home/dbadmin/software -o vers=3.0,username=others2019,password=UzuOqP7UEjAwjNRlxsC9GI7vmjcFom5ib/misaSkAVBCJzVvUdb44R+5fKw6cMCFLf23EcTfnVW13WFwi8pCtQ==,dir_mode=0777,file_mode=0777,sec=ntlmssp
elif [ "$Location" = eastus2 ]; then
    mount -t cifs //softwarees.file.core.windows.net/softwares /home/dbadmin/software -o vers=3.0,username=softwarees,password=rI4pZWk5IvYU4rt93YjX9fikJBBPPaiXVmhu07rBzHaaFE9s2enYyiqodjvhtuehYi6rJyAmiMGokzKazy+KHg==,dir_mode=0777,file_mode=0777,sec=ntlmssp
elif [ "$Location" = eastus ]; then
    mount -t cifs //softwarees.file.core.windows.net/softwares /home/dbadmin/software -o vers=3.0,username=softwarees,password=rI4pZWk5IvYU4rt93YjX9fikJBBPPaiXVmhu07rBzHaaFE9s2enYyiqodjvhtuehYi6rJyAmiMGokzKazy+KHg==,dir_mode=0777,file_mode=0777,sec=ntlmssp
elif [ "$Location" = uksouth ]; then
    mount -t cifs //softwareuks.file.core.windows.net/softwareuk /home/dbadmin/software -o vers=3.0,username=softwareuks,password=qQqIGEt6qc/PM5zlgKP5nQZJurS76SzNXukL4mDP2tb8QG9YgNsqwZj2iOXxib3qI59Uj0VX7TswwOCpxjNU8A==,dir_mode=0777,file_mode=0777,sec=ntlmssp
elif [ "$Location" = australiaeast ]; then
    mount -t cifs //softwareae.file.core.windows.net/softwareae /home/dbadmin/software -o vers=3.0,username=softwareae,password=+ZcJPIUXEIx72vrVMKsVSjoFtbUo/RPEDzH89oNKNSl99/VfgSE/M/fJWMfwRurrALjQot8Bn2G8KChhSwSOUQ==,dir_mode=0777,file_mode=0777,sec=ntlmssp
elif [ "$Location" = southeastasia ]; then
    mount -t cifs //softwaresilt.file.core.windows.net/software /home/dbadmin/software -o vers=3.0,username=softwaresilt,password=H5tUmravg0/jEOg6p9RRHOQ6i0aHEEPtcglggRJXc/x5nthYdR4Isi4pL4OvoMFSiddAzKi7RbuRExW1L5HoPw==,dir_mode=0777,file_mode=0777,sec=ntlmssp
elif [ "$Location" = westus2 ]; then
    mount -t cifs //softwarewus.file.core.windows.net/softwarewus2 /home/dbadmin/software -o vers=3.0,username=softwarewus,password=y31E0viKAjBCFXJEoVQmh7PJS6026fQsNOkDY+RRKPHp4kR5O8y0S1bvqxJMsoqMQU3c5aDcmp0FJTAJ9erJrg==,dir_mode=0777,file_mode=0777,sec=ntlmssp
else
    printf '%s\n' "## Region mismatch - Talk to us please ##"
fi
