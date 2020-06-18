#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label
# Asking the user to Enter 3 numbers
echo " Please enter first number"
read firstnum

echo " Please enter second number"
read secondnum

echo " Please enter third number"
read thirdnum


sum=$((firstnum + secondnum + thirdnum))
product=$((firstnum * secondnum * thirdnum))

dividend=$((firstnum / secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF
$firstnum plus $secondnum plus $thirdnum is $sum

$firstnum multiplied by $secondnum multiplied by $thirdnum is $product

$firstnum divided by $secondnum is $dividend
  - More precisely, it is $fpdividend
EOF
