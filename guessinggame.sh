#!/bin/bash 

echo "Welcome To My Game World"

function guessing_game {
    number_of_files=$(ls -lrt | wc -l)
    while true
    do
        echo "Guess the number of files and directories in this directory?"
        read user_value
        if ! [[ $user_value =~ [0-9] ]];then
            echo "Not a valid number. Try again."
        elif [[ $user_value -gt $number_of_files ]];then
            echo "Guess is too high. Try again."
        elif [[ $user_value -lt $number_of_files ]];then
            echo "Guess is too low. Try again."
        elif [[ $user_value -eq $number_of_files ]];then
            break
        fi
    done
    echo "You guessed it right. Congratulations!!! The number is " $user_value
}
