#!/bin/bash

read -p "Enter first number: " num1
read -p "Enter operator (+, -, *, /): " op
read -p "Enter second number: " num2

if [ "$op" == "+" ]; then
    result=$((num1 + num2))
elif [ "$op" == "-" ]; then
    result=$((num1 - num2))
elif [ "$op" == "*" ]; then
    result=$((num1 * num2))
elif [ "$op" == "/" ]; then
    if [ "$num2" -eq 0 ]; then
        echo "Error: Division by zero"
        exit 1
    fi
    result=$((num1 / num2))
else
    echo "Invalid operator"
    exit 1
fi

echo "Result: $num1 $op $num2 = $result"
