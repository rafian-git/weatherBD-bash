#!/bin/bash

declare -a arr=("dhaka" "chittagong" "barishal" "rangpur" "mymensing" "sylhet" "khulna" "rajshahi")
for i in "${arr[@]}"
do
 if [ -z $DIVISION ] || [ "$DIVISION" = "$i" ] || [ "$DIVISION" = "" ]; then
  weather=$(curl -s http://wttr.in/$i?format=2)
  echo "$i :    $weather"
 fi
done
