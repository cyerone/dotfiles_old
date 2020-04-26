#!/bin/bash
D=""

root=`df -h | grep vg01-root | awk '{print $3 "/" $2}'`
home=`df -h | grep vg01-home | awk '{print $3 "/" $2}'`
downl=`df -h | grep vg02-downloads | awk '{print $3 "/" $2}'`
vm=`df -h | grep vg02-vm | awk '{print $3 "/" $2}'`

echo "$D $root $D $home $D $downl $D $vm" > ./scripts/Read/disc
