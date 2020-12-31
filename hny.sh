  #!/bin/bash

trap "tput reset; tput cnorm; exit" 2
clear
tput civis

color=0
str="✨ ✨ ✨ HAPPY NEW YEAR ${USER} ✨ ✨ ✨"
length=${#str}

while true; do
  width=$(tput cols)
  height=$(tput lines)
  tput cup $((height / 2)) $(((width / 2) - (length / 2)))

  tput setaf $color; tput bold
  color=$(((color+1)%8))
  
  echo "$str"
  sleep 0.1
done