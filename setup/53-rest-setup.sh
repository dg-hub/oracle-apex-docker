#!/bin/bash
cd /tmp/apex
su -p oracle -c "sqlplus / as sysdba <<EOF
ALTER SESSION SET CONTAINER = XEPDB1;
@apex_rest_config.sql
EOF"
