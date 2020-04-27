cd $HOME/.config/polybar/

date=`./scripts/date.sh`

#updated every 1s
speakers=`cat ./scripts/Read/speakers`
microphone=`cat ./scripts/Read/microphone`
brightness=`cat ./scripts/Read/brightness`
isDiscord=`cat ./scripts/Read/isDiscord`
#updated every 5s
battery=`cat ./scripts/Read/battery`
connection=` cat ./scripts/Read/connection`
memory=`cat ./scripts/Read/memory`
#updated every 15s
disc=`cat ./scripts/Read/disc`

sep="%{F#c0ca33}|%{F-}"
sepD="%{F#c0ca33}||%{F-}"

echo -e " $connection $sep $memory $sepD $disc $sepD $speakers  $microphone $sep $isDiscord $sepD $brightness $sep $battery $sepD $date"

