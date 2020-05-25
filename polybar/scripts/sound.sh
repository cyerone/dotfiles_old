#!/bin/bash

sink=`pactl info | grep "Default Sink" | awk '{print $3}'`
source=`pactl info | grep "Default Source" | awk '{print $3}'`

### OUTPUT

  vup="pamixer --sink $sink -i 5"
  vdown="pamixer --sink $sink -d 5"
  mtoggle="pamixer --sink $sink -t"
  MUTE=`pamixer --sink $sink --get-mute`
  VOL=`pamixer --sink $sink --get-volume`

  if [ "$MUTE" = "true" ]; then
    out="%{F#FFFFFF}%{F-} MUTE"
  else
    if [ "$VOL" -lt "15" ]; then
      VOL_I=''
    elif [ "$VOL" -lt "50" ]; then
      VOL_I=''
    else
      VOL_I=''
    fi
    out="%{F#FFFFFF}$VOL_I%{F-} $VOL%"
  fi

  echo "%{A1:$mtoggle:}%{A4:$vup:}%{A5:$vdown:}$out%{A}%{A}%{A}" > ./scripts/Read/speakers

### INPUT


  vup="pamixer --source $source -i 5"
  vdown="pamixer --source $source -d 5"
  mtoggle="pamixer --source $source -t"
  MUTE=`pamixer --source $source --get-mute`
  VOL=`pamixer --source $source --get-volume`

  if [ "$MUTE" = "false" ]; then
    out="%{F#FFFFFF}%{F-} $VOL%"
  else
    out="%{F#FFFFFF}%{F-} MUTE"
  fi

  echo "%{A1:$mtoggle:}%{A4:$vup:}%{A5:$vdown:}$out%{A}%{A}%{A}" > ./scripts/Read/microphone

### PRESETS

i1=""
i2=""
i3=""
i4=""

set1="sh /home/jakub/Git/dotfiles/polybar/scripts/setAudioIO.sh 1 2>/dev/null"
set2="sh /home/jakub/Git/dotfiles/polybar/scripts/setAudioIO.sh 2 2>/dev/null"
set3="sh /home/jakub/Git/dotfiles/polybar/scripts/setAudioIO.sh 3 2>/dev/null"
set4="sh /home/jakub/Git/dotfiles/polybar/scripts/setAudioIO.sh 4 2>/dev/null"

if  [ "$sink" == "alsa_output.pci-0000_00_1f.3.analog-stereo" ]; then
  i1="%{F#FFFFFF}$i1%{F-}"
elif [ "$sink" == "bluez_sink.C4_45_67_45_62_E2.a2dp_sink" ];then
  i2="%{F#FFFFFF}$i2%{F-}"
elif [ "$sink" == "bluez_sink.00_11_67_2D_78_E4.a2dp_sink" ];then
  i3="%{F#FFFFFF}$i3%{F-}"
elif [ "$sink" == "bluez_sink.70_99_1C_41_25_B6.a2dp_sink" ];then
  i4="%{F#FFFFFF}$i4%{F-}"
fi


echo "%{A1:$set1:}$i1%{A} %{A1:$set2:}$i2%{A} %{A1:$set3:}$i3%{A} %{A1:$set4:}$i4%{A}" > ./scripts/Read/audioPresets