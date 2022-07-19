#!/bin/bash


echo Date=$1
echo Time=$2
grep "$2" $1_Dealer_schedule | awk -F" " '{print $5, $6}'

