#!/bin/bash

if [ "$1" == "1" ];then
  pactl set-card-profile alsa_card.pci-0000_00_1f.3 output:analog-stereo+input:analog-stereo
  pactl set-card-profile bluez_card.C4_45_67_45_62_E2 off
  pactl set-card-profile bluez_card.00_11_67_2D_78_E4 off
  pactl set-card-profile bluez_card.70_99_1C_41_25_B6 off
elif [ "$1" == "2" ];then
  pactl set-card-profile alsa_card.pci-0000_00_1f.3 input:analog-stereo
  pactl set-card-profile bluez_card.C4_45_67_45_62_E2 a2dp_sink_aptx
  pactl set-card-profile bluez_card.00_11_67_2D_78_E4 off
  pactl set-card-profile bluez_card.70_99_1C_41_25_B6 off
elif [ "$1" == "3" ];then
  pactl set-card-profile alsa_card.pci-0000_00_1f.3 input:analog-stereo
  pactl set-card-profile bluez_card.C4_45_67_45_62_E2 off
  pactl set-card-profile bluez_card.00_11_67_2D_78_E4 a2dp_sink_sbc
  pactl set-card-profile bluez_card.70_99_1C_41_25_B6 off
elif [ "$1" == "4" ];then
  pactl set-card-profile alsa_card.pci-0000_00_1f.3 input:analog-stereo
  pactl set-card-profile bluez_card.C4_45_67_45_62_E2 off
  pactl set-card-profile bluez_card.00_11_67_2D_78_E4 off
  pactl set-card-profile bluez_card.70_99_1C_41_25_B6 a2dp_sink_sbc
fi