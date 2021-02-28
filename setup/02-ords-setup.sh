#!/bin/bash
PARAM_FILE=/opt/oracle/ords/apex-ords-params.properties
/opt/oracle/product/18c/dbhomeXE/jdk/jre/bin/java -jar /opt/oracle/ords/ords.war install simple --parameterFile $PARAM_FILE 
