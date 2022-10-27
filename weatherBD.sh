#!/bin/bash

declare -a arr=("dhaka" "chittagong" "barishal" "rangpur" "mymensing" "sylhet" "khulna" "rajshahi")
found=false
for i in "${arr[@]}"
do
 if [ -z $DIVISION ] || [ "$DIVISION" = "$i" ] || [ "$DIVISION" = "" ]; then
  weather=$(curl -s http://wttr.in/$i?format=2)
  echo "$i :    $weather"
  found=true
 fi
done
if [ "$found" = false ]; then
 echo -e '\033[31m wrong division provided'
fi
