<h1 align="center">HW2 - Scripts</h1>
<h1 align="center">Elie Haddad</h1>
 <h3 align="center">In this homework we practiced writing linux bash scripts</h3>
<p align="center" >
  <img src="https://miro.medium.com/max/681/1*3VtnO2AjPYLEackpU79wmw.jpeg" alt="drawing" style="width:200px;"/>
</p>

###  In the "bash scripts.pdf" file you can find the purpose of each script.
#### For each one of the scripts we made sure that it keeps running until the user decides he wants to stop.

#### And In case the Input wasnt legal then we return a "Wrong input!" message and give the user another chance to try again

![example](/Images/hw2example.png?raw=true "example")

### 1) In the Sum.sh file we wrote a script that gets two numbers from the user and returns a message telling the user if the sum of the two numbers is greater, smaller or equal to 100

>#### **we added the two numbers and checked if they are less than 100.**
> #### **[[ $((a+b)) -lt 100 ]]**
> #### **[[ $((a+b)) -eq 100 ]]**


### 2) In the FerToCel.sh file we get a number from the user which represents the temperature in Ferenheit and returns the temperature in Celsius, we used the equation:
> #### cel=(fer-32)*5/9
### 3) In the TopTen.sh file we wrote a script that gets a name of a directorty from the user and returns the names of the largest 10 files in this directory, we used the commands find, du and sort.
> #### **First we "found" all the files in the directory and using pipe we found all the files sizes with the du command and then again using pipe we sorted them with the sort command and then we printed top ten using the head command**
> #### **find $tmp -type f | du -a | sort -rh | head -10**

### Run the scripts using ./fileName
