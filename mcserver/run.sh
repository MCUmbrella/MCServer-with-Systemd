#! /bin/bash
cd /mcserver/
java -Xmx2g -Xms2g -jar ./server.jar nogui
echo Reatart in 15 seconds. Use "systemctl stop mc" to abort
