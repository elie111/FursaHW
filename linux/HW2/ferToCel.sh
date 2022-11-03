#! /usr/bin/bash
read -p "please enter the temperature in ferenheit " fer
cel=$((fer-32))
echo $((cel*5/9))