#! /usr/bin/bash
while true
do
read -p "Please enter the path to the directory: " tmp
if [[ -z $tmp ]]
then
        echo "Wrong input!"
else
        echo " "
        echo "Top ten largest files in the $tmp directory are: "
find $tmp -type f | du -a | sort -rh | head -10
fi
read -p "Again?  Yes=1 No=2  " ans
if [[ $ans -eq 2 ]]
then break
fi
done