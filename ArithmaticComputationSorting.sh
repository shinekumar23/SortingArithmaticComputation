#!/bin/bash -x
read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c
declare -A compute
compute[a+b*c]=[$(($a+$(($b*$c))))]
compute[a*b+c]=[$(($(($a*$b))+$c))]
compute[c+a/b]=[$(($c+$(($a/$b))))]
compute[a%b+c]=[$(($(($a%$b))+$c))]


