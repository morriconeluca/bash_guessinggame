#!/usr/bin/env bash

function guessNumber {
  local not_number='^[^0-9]+$';

  end=false;

  echo 'How many files are in the current directory?';

  while [[ $end == false ]]; do
    read -a guess_number;
    if [[ ${guess_number[0]} == 'q' ]]; then
      end=true;
    elif [[ ${guess_number[0]} =~ $not_number ]]; then
      echo "Invalid input. Try to guess again:"
    elif [[ ${guess_number[0]} -eq $1 ]]; then
      echo "Congratulation, your guess (${guess_number[0]}) is correct!";
      end=true;
    elif [[ ${guess_number[0]} -gt $1 ]]; then
      echo "Your guess (${guess_number[0]}) was either too high. Try to guess again:";
    elif [[ ${guess_number[0]} -lt $1 ]]; then
      echo "Your guess (${guess_number[0]}) was either too low. Try to guess again:";
    else
      echo "Something was wrong. Try to guess again:"
    fi
  done

  echo "See you!";
}

number_of_files=$(ls -l | egrep '^-' | wc -l);

guessNumber $number_of_files;