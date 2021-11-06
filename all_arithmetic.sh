#!/usr/bin/env bash

# -p => prompt
read -p "Enter A value : " A
read -p "Enter B Value : " B


# NOTE :
# In shell scripting to perform a arithmetic operation it has to be surrounded with two paranthesis (())
# We cannot use a single () because it is sometimes used to perform command grouping
# example : (ls | grep "hello") > hello_operation.txt
ADD=$((A+B))
echo -e "\nAddition of A and B is $ADD"

SUB=$((A-B))
echo "Substraction of A and B is $SUB"

MULTIPLY=$((A*B))
echo "Multiplication of A and B is $MULTIPLY"

DIVIDE=$((A/B))
echo "Division of A and B is $DIVIDE"

REMAINDER=$((A%B))
echo "Remainder of A and B is $REMAINDER"
