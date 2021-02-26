#!/bin/bash
#@apexins.sql SYSAUX SYSAUX TEMP /i/
cd /tmp/apex
su -p oracle -c "sqlplus / as sysdba <<EOF
ALTER SESSION SET CONTAINER = ${ORACLE_PDB:-XEPDB1};
@apxsilentins.sql SYSAUX SYSAUX TEMP /i/ ${ORACLE_PWD} ${ORACLE_PWD} ${ORACLE_PWD} ${ORACLE_PWD}
EOF"
su -p oracle -c "sqlplus / as sysdba <<EOF
ALTER USER ANONYMOUS ACCOUNT UNLOCK;
ALTER USER APEX_PUBLIC_USER ACCOUNT UNLOCK;
ALTER USER APEX_PUBLIC_USER IDENTIFIED BY ${ORACLE_PWD};
EOF"