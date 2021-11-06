READ command

Usage : read [options] variable

options :

-p Prompt user to enter something which will get stored inside the variable
```
read -p "Enter your password : " password
```

-n Limit the number of chars in input.
```
read -n 8 -p "Enter your password (max 8 length) : " password
```

-s Secret allows to hide sensitive data while entering.
```
read -s -p "Enter your password : " password
```

-t Timeout will not allow to enter the data after the time limit expires.
```
read -s -t 10 -p "Enter your password within 10 seconds : " password
```
-a Getting input in an array
```
read -p "Please type your name, age, and email : " -a arr name age email
echo ${arr[0]}
echo ${arr[1]}
echo ${arr[2]}
```
