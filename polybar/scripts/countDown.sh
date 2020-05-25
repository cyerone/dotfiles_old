#!/bin/bash
target=$1
time=`date '+%s'`
left=$((target-time));

if((left>59));then
  ((sec=left%60))
      ((left=left/60))
      if((left>59));then
          ((min=left%60))
          ((left=left/60))
          if((left>23));then
              ((hour=left%24))
              ((day=left/24))
          else
              ((hour=left))
          fi
      else
          ((min=left))
      fi
else
    ((sec=left))
fi
echo %{F#FFFFFF} ﮣ %{F-} %{F#f00}"$day"d "$hour"h "$min"m "$sec"s%{F-}

