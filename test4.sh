#!/bin/env bash
# While ciklus
# set -x # minden parancsot kiír
# read : standard inputról egy sort olvas
FILE=$1
exec 0<$FILE # standard inputra megy a file tartalma
while read line # a line változóba tesz egy sort
do
    echo $line
done
# ; -vel elválasztva egy sorba lehet több parancst is tenni.
