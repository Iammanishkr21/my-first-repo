#!/usr/bin/env bash
# File: guessinggame.sh

function guessthegame {
  cnt=$(find . -maxdepth 1 -type f|wc -l)
  echo $cnt
}

count=$(guessthegame)
echo "Hello, Welcome to my game!)"
echo "Guess the number of files in the directory of the game"
read num

while [[ $count -ne $num ]]
do
  if [[ $count -gt $num ]]
  then
    echo "The number is too low please try again"
    read num
  elif [[ $count -lt $num ]]
  then
    echo "The number is too high please try again"
    read num
  fi
done

echo "Congratulations You have Won the Game!"

