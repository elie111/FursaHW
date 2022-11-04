#! /usr/bin/bash
while true
do
read -p "Please enter the two numbers: " a b
if [[ -z $a ]] | [[ -z $b ]]
then
        echo "Wrong input!"
elif [[ $((a+b)) -lt 100 ]]
then
        echo "The sum of the 2 numbers is smaller than 100"
elif [[ $((a+b)) -eq 100 ]]
then
        echo "The sum of the two numbers is 100"
else
        echo "The sum of the 2 numbers is greater than 100"
fi
read -p " Again?  Yes=1 No=2:   " ans
if [[ $ans -eq 2 ]]
then
        break
fi
done