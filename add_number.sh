#!/usr/bin/env bash

echo "Enter first number : "
read A
echo "Enter second number : "
read B

# In shell scripting to perform a arithmetic operation it has to be surrounded with two paranthesis (())
# We cannot use a single () because it is sometimes used to perform command grouping
# example : (ls | grep "hello") > hello_operation.txt
C=$((A + B))

echo "The result is $C"
