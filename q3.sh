#!/bin/bash

read -sp "Enter Password" password
echo

min_len="^.{8,}$"
num_char="[0,9]"
uppercase="[A,Z]"
special_char="[@#$%&*+-=]"

if [[ $password=~ &min_len ]] &&
   [[ $password=~ &num_char ]] &&
   [[ $password=~ &uppercase ]] &&
   [[ $password=~ &special_char ]] &&
then
	echo "password accepted"
else
	echo "password does not accepted"
fi
