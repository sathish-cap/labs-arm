#!/bin/bash
cat  .ssh/id_rsa.pub  |  ssh  root@s03-db-1  'cat  >>  .ssh/authorized_keys'
cat  .ssh/id_rsa.pub  |  ssh  root@s03-db-0  'cat  >>  .ssh/authorized_keys'