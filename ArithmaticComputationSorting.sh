#!/bin/bash -x
read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c
compute1=$(($a+$(($b*$c))))
compute2=$(($(($a*$b))+$c))
compute3=$(($c+$(($a/$b))))
