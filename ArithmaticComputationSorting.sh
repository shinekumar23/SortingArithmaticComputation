#!/bin/bash -x
read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c
declare -A compute
compute[a+b*c]="$(($a+$(($b*$c))))"
compute[a*b+c]="$(($(($a*$b))+$c))"
compute[c+a/b]="$(($c+$(($a/$b))))"
compute[a%b+c]="$(($(($a%$b))+$c))"


for i in ${compute[@]}
do
   	array[j++]=$i
done

for (( i=0; i<4; i++ ))
do
      for (( k=i+1; k<4; k++ ))
      do
               if [ $((array[$i])) -lt $((array[$k])) ]
               then
                     temp=$((array[$i]))
                     array[$i]=$((array[$k]))
                     array[$k]=$temp
               fi
      done
done
echo "The sorted array in Descending order: ${array[@]}"

arraySize=4
for (( j=0; j<$arraySize; j++ ))
do
   temp=${array[$j]}
   array[$j]=${array[$arraySize]}
   array[$arraySize]=$temp
   ((arraySize--))
done
echo "The Sorted array in Ascending order ${array[@]}"
