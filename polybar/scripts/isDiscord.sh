#!/bin/bash
PIDS=`pidof Discord`
if [ "${#PIDS}" -gt 0 ] ;  then
  echo "" > ./scripts/Read/isDiscord
else
  echo "" > ./scripts/Read/isDiscord
fi
