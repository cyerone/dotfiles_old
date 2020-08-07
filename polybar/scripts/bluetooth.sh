#!/bin/bash

dev1=""
dev2=""
dev3=""

isDev1=`pactl list cards short | grep bluez_card.C4_45_67_45_62_E2 | wc -l`
isDev2=`pactl list cards short | grep bluez_card.00_11_67_2D_78_E4 | wc -l`
isDev3=`pactl list cards short | grep bluez_card.70_99_1C_41_25_B6 | wc -l`

connect1="bluetoothctl connect C4\:45\:67\:45\:62\:E2"
connect2="bluetoothctl connect 00\:11\:67\:2D\:78\:E4"
connect3="bluetoothctl connect 70\:99\:1C\:41\:25\:B6"

disconnect1="bluetoothctl disconnect C4\:45\:67\:45\:62\:E2"
disconnect2="bluetoothctl disconnect 00\:11\:67\:2D\:78\:E4"
disconnect3="bluetoothctl disconnect 70\:99\:1C\:41\:25\:B6"


if [ "$isDev1" == "1" ]; then
  dev1="%{F#FFFFFF}$dev1%{F-}"
fi

if [ "$isDev2" == "1" ]; then
  dev2="%{F#FFFFFF}$dev2%{F-}"
fi

if [ "$isDev3" == "1" ]; then
  dev3="%{F#FFFFFF}$dev3%{F-}"
fi

echo "%{A1:$connect1:}%{A3:$disconnect1:}$dev1%{A}%{A} %{A1:$connect2:}%{A3:$disconnect2:}$dev2%{A}%{A} %{A1:$connect3:}%{A3:$disconnect3:}$dev3%{A}%{A}" > ./scripts/Read/bluetooth