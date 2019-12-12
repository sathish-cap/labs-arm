#!/bin/sh
if [ "$HOSTNAME" = s03-db-0 ]; then
    cd /usr/sap/S03/SYS/global/security/rsecssfs/data/
    scp SSFS_S03.DAT s03adm@s03-db-1:/usr/sap/S03/SYS/global/security/rsecssfs/data/
    echo '##### Copied SSFS_S03.DAT file to s03adm@s03-db-1'
    cd /usr/sap/S03/SYS/global/security/rsecssfs/key/
    scp SSFS_S03.KEY s03adm@s03-db-1:/usr/sap/S03/SYS/global/security/rsecssfs/key/
    echo '##### Copied SSFS_S03.KEY to s03adm@s03-db-1'
else
    printf '%s\n' "## Executing command in incorrect VM ##"
fi

exit