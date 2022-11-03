#! /usr/bin/bash
read -p "enter the path to the directory: " tmp
find $tmp | du | sort -h