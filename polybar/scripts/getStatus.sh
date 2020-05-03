cd $HOME/.config/polybar/

date=`./scripts/date.sh`

#updated every 1s
speakers=`cat ./scripts/Read/speakers`
microphone=`cat ./scripts/Read/microphone`
player=`cat ./scripts/Read/player`
brightness=`cat ./scripts/Read/brightness`
isDiscord=`cat ./scripts/Read/isDiscord`
#updated every 5s
battery=`cat ./scripts/Read/battery`
connection=` cat ./scripts/Read/connection`
memory=`cat ./scripts/Read/memory`
#updated every 15s
disc=`cat ./scripts/Read/disc`

sep="%{F#5e35b1}|%{F-}"
sepD="%{F#5e35b1}||%{F-}"

if [ "$1" == "full" ]; then
  echo -e "$player $sepD $connection $sep $memory $sepD $disc $sepD $speakers  $microphone $sep $isDiscord $sepD $brightness $sep $battery $sepD $date  "
elif [ "$1" == "light" ]; then
  echo -e "$player $sepD $connection $sepD $speakers $sep $microphone $sepD $brightness $sep $battery $sepD $date  "
else
  echo "please use 'full' or 'light' parameter"
fi

