#!/bin/sh
echo "Start ORDS"
cd /opt/oracle/ords/
/opt/oracle/product/18c/dbhomeXE/jdk/jre/bin/java -jar /opt/oracle/ords/ords.war standalone
