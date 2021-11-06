#!/usr/bin/env bash

# -p => prompt
read -p "Enter A value : " A
read -p "Enter B Value : " B

ADD=$((A+B))
echo -e "\nAddition of A and B is $ADD"

SUB=$((A-B))
echo -e "Substraction of A and B is $SUB"

MULTIPLY=$((A*B))
echo -e "Multiplication of A and B is $MULTIPLY"

DIVIDE=$((A/B))
echo -e "Division of A and B is $DIVIDE"

REMAINDER=$((A%B))
echo -e "Remainder of A and B is $REMAINDER"
