#!/bin/bash
APEX_FILE=apex_20.2_en.zip
wget https://oraapex.blob.core.windows.net/downloads/$APEX_FILE
rm ./$APEX_FILE
unzip ./$APEX_FILE -d /tmp
