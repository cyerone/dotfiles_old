cd $HOME/.config/polybar/

date=`./scripts/date.sh`

#updated every 1s
speakers=`cat ./scripts/Read/speakers`
microphone=`cat ./scripts/Read/microphone`
player=`cat ./scripts/Read/player`
brightness=`cat ./scripts/Read/brightness`
isDiscord=`cat ./scripts/Read/isDiscord`
audioPresets=`cat ./scripts/Read/audioPresets`
bluetooth=`cat ./scripts/Read/bluetooth`
#updated every 5s
battery=`cat ./scripts/Read/battery`
connection=` cat ./scripts/Read/connection`
memory=`cat ./scripts/Read/memory`
#updated every 15s
disc=`cat ./scripts/Read/disc`

sep="%{F#5e35b1}|%{F-}"
sepD="%{F#5e35b1}||%{F-}"

invader="%{F#FF8C00}ﮥ%{F-}"

shutdown_dialog="sh /home/jakub/Git/dotfiles/polybar/scripts/dmenu_scripts/shutdown_dialog.sh"

bomb="%{F#DC143C}%{A1:$shutdown_dialog:}%{A}%{F-}"

if [ "$1" == "top" ]; then

  echo -e "$speakers  $microphone $sepD $connection $sepD $brightness $sep $battery $sepD $date $sepD $bomb "

elif [ "$1" == "bottom" ]; then

  echo -e "$bluetooth $sepD $audioPresets $sepD $memory $sepD $disc $sepD $invader "

elif [ "$1" == "bottomleft" ]; then

  echo -e " $player"

else
  echo "please use 'top' or 'bottom' or 'bottomleft' parameter"
fi

