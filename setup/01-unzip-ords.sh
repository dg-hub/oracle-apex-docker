#!/bin/sh
ORDS_FILE=ords-20.4.3.050.1904.zip
mkdir /opt/oracle/ords
wget https://oraapex.blob.core.windows.net/downloads/$ORDS_FILE
unzip ./$ORDS_FILE -d /opt/oracle/ords
rm ./$ORDS_FILE
cp -r /tmp/apex/images/ /opt/oracle/ords/images
cp /opt/oracle/scripts/properties/apex-ords-params.properties /opt/oracle/ords/
sed -i "s/{PASSWORD}/${ORACLE_PWD}/g" /opt/oracle/ords/apex-ords-params.properties
