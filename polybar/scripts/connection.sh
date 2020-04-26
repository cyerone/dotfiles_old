#!/bin/bash

eth="enp3s0"
wl="wlp5s0"
ethStatus=`ip addr | grep $eth: | awk {'print $9'}`
wlStatus=`ip addr | grep $wl: | awk {'print $9'}`

###Signal power
pci=`lspci | grep -i wireless | awk '{print $1}'`
signalF=`lspci -vv -s $pci | grep Status: | awk '{print $3}'`
signal="${signalF::-4}"


if [ "$ethStatus" == "UP" ]; then
  echo "綾" > ./scripts/Read/connection
else
  if [ "$wlStatus" == "DOWN" ]; then
    echo "來" > ./scripts/Read/connection
  else
    if [ "$signal" -lt "60" ]; then
      signalI="蠟"
    elif [ "$signal" -lt "70" ]; then
      signalI="襤"
    elif [ "$signal" -lt "80" ]; then
      signalI="嵐"
    elif [ "$signal" -lt "80" ]; then
      signalI="爛"
    else
      signalI="冷"
    fi
    echo -e "$signalI -$signal""dBm" > ./scripts/Read/connection
  fi
fi

