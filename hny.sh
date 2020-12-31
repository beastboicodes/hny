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


# lmao if u are looking at the code u the real G
# Author: github.com/manavendrasen

# now try out
# curl https://raw.githubusercontent.com/beastboicodes/hny/main/susfile.sh | bash
# dependencies - toilet
# install using - sudo apt install toilet
# for non debian users, idk figure it out lol