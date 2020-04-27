#!/bin/bash
echo "%{F#FFFFFF}%{F-} `free -h --si | grep Mem: | awk '{print $3"/"$2}'`" > ./scripts/Read/memory
