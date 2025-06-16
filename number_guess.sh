#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

NUM=$((RANDOM % 1000 + 1))

echo -e "\nEnter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
if [[ -n $USER_ID ]]
  then
    GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games JOIN users ON games.user_id = users.user_id WHERE users.username = '$USERNAME'")
    BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games JOIN users ON games.user_id = users.user_id WHERE users.username = '$USERNAME'")
    printf "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.\n"
  else
    printf "Welcome, $USERNAME! It looks like this is your first time here.\n"
    NEW_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
fi

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")

printf "\nGuess the secret number between 1 and 1000:\n"
read SELECTION
NUMBER_OF_GUESSES=1
while true
do
  if [[ ! $SELECTION =~ ^[0-9]+$ ]]
  then
  echo -e "\nThat is not an integer, guess again:\n"
  else
    if [[ $SELECTION -lt $NUM ]]
    then 
      echo -e "\nIt's higher than that, guess again:\n"
    elif [[ $SELECTION -gt $NUM ]]
    then
      echo -e "\nIt's lower than that, guess again:\n"
    else
      echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $NUM. Nice job!"
      DATA=$($PSQL "INSERT INTO games (user_id, guesses) VALUES ($USER_ID, $NUMBER_OF_GUESSES)")
      break    
    fi
  fi
  read SELECTION
  NUMBER_OF_GUESSES=$((NUMBER_OF_GUESSES + 1))
done



