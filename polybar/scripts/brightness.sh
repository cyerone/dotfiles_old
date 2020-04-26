#!/bin/bash
echo " `brightnessctl | grep Current | awk '{print $4}' | sed  's/[()]//g'`" > ./scripts/Read/brightness
