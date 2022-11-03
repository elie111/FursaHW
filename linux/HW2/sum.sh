#! /usr/bin/bash
a=$1
b=$2
if [[ $# -lt 2 ]]
then
        echo "please enter two numbers!"
        exit
elif [[ $((a+b)) -lt 100 ]]
then
        echo "the sum of the 2 numbers is smaller than 100"
else
        echo "the sum of the 2 numbers is larger than 100"
fi