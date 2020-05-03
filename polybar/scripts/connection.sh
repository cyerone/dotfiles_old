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
  out="%{F#FFFFFF}%{F-}"
else
  if [ "$wlStatus" == "DOWN" ]; then
    out="%{F#FFFFFF}來%{F-}"
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
    out="%{F#FFFFFF}$signalI%{F-} -$signal""dBm"
  fi
fi

echo "$out" > ./scripts/Read/connection

