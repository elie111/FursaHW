<h1 align="center">HW2 - Scripts</h1>
<h1 align="center">Elie Haddad</h1>

## In this homework we practiced writing linux scripts

<p align="center">
  <img src="https://miro.medium.com/max/681/1*3VtnO2AjPYLEackpU79wmw.jpeg" alt="drawing" style="width:200px;"/>
</p>

## In the "bash scripts" file you can find the purpose of each script.

## 1) In the sum.sh file we wrote a script that gets two numbers from the user and returns
## a message telling the user if the sum of the two numbers is greater or smaller than 100
>#### **we added the two numbers and checked if they are less than 100**
> ## **[[ $((a+b)) -lt 100 ]]**
## 2) In the fetToCel.sh file we get a number from the user which represents the temperature in Ferenheit and returns the temperature in Celsius, we used the equation:
> ## **cel=(fer-32)*5/9**
## 3) In the topTen.sh file we wrote a script that gets a name of a directorty from the user and return the names of the largest 10 files in this directory, we used the commands find, du and sort.
> #### **first we "found" all the files in the directory and using the pipe we found all the files sizes with the du command and then again using pipe we sorted them with the sort command**
> ## **find $tmp | du | sort -h**

## Run the script using ./fileName
