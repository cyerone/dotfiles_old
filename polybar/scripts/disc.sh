#!/bin/bash
D="%{F#FFFFFF}%{F-}"
filem="thunar"

root=`df -h | grep vg01-root | awk '{print $3 "/" $2}'`
home=`df -h | grep vg01-home | awk '{print $3 "/" $2}'`
downl=`df -h | grep vg02-downloads | awk '{print $3 "/" $2}'`
vm=`df -h | grep vg02-vm | awk '{print $3 "/" $2}'`

echo "%{A1:$filem /:}$D $root%{A} %{A1:$filem $HOME:}$D $home%{A} %{A1:$filem /Storage/downloads:}$D $downl%{A} %{A1:$filem /Storage/vm:}$D $vm%{A}" > ./scripts/Read/disc
