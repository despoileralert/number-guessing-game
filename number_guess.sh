#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
echo "Enter your username:" 
read USERNAME
presencecheck=$($PSQL "select name from users where name='$USERNAME';")
if [[ -z $presencecheck ]]; then
INSERT_VALUE=$($PSQL "INSERT INTO users(name, games) values('$USERNAME', 0);")
echo "Welcome, $USERNAME! It looks like this is your first time here."
elif ! [[ -z $presencecheck ]]; then
fulltable=$($PSQL "select * from users where name='$USERNAME';")
echo $fulltable | while IFS='|' read name games best_attempts; do
echo "Welcome back, $name! You have played $games games, and your best game took $best_attempts guesses."
done
fi
number=$(( $RANDOM % 50 + 1 ))
count=1
echo "Guess the secret number between 1 and 1000:"
read guess
while  [[ ! $guess =~ ^[0-9]+$ ]]; do
  echo "That is not an integer, guess again:"
  read guess
done
while [[ $guess -ne $number ]]; do 
  if [[ $guess -gt $number ]]; then
  echo "It's lower than that, guess again:"
  count=$(($count+1))
  read guess
  elif [[ $guess -lt $number ]]; then
  echo "It's higher than that, guess again:"
  count=$(($count+1))
  read guess
  fi
done
echo "You guessed it in $count tries. The secret number was $number. Nice job!"
INSERT_VALUE2=$($PSQL "INSERT INTO users_games(name, guesses_in_thatgame) VALUES('$USERNAME', $count);")
bestgame=$($PSQL "SELECT min(guesses_in_thatgame) from users_games where name='$USERNAME';")
updating=$($PSQL "UPDATE users set best_attempts=$bestgame, games = games + 1 where name='$USERNAME';")

