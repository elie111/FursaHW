#! /usr/bin/bash
while true
do
read -p "Please enter the temperature in Ferenheit: " fer
if [[ -z $fer ]]
then
        echo "Wrong input!"
else
cel=$((fer-32))
echo "The temperature in Celsius is $((cel*5/9)) C"
fi
read -p "Again?  Yes=1 No=2  " ans
if [[ ans -eq 2 ]]
then
        break
fi
done