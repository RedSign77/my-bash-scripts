#!/bin/env bash
# For ciklus
#set -x # minden parancsot kiír
dir=$1
homedir=$(ls $dir)
for h in $homedir
do
    du -hs $dir/$h
done
