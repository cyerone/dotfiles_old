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

echo "$connection || $memory || $disc || $speakers  $microphone | $isDiscord || $brightness | $battery || $date"

