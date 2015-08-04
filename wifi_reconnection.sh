#!/bin/bash

#: Tittle     : wifi_reconnection.sh
#: Version    : 1.0
#: Desciption : Test internet connection, if don't have, it tries to reconnect your Wi-Fi interface
#: Options    : None

## IP to PING and test internet connection
SERVER=8.8.8.8

ping -c2 ${SERVER} > /dev/null

if [ $? != 0 ]
then
  sudo ifdown --force wlan0
  sudo ifup wlan0
fi
