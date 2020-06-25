#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
# title="Overlord"
echo "Enter your name:"
read USER
hostname=$(hostname)



# %A for day
# %I for Hour
# %M for minute
# %S for second
# %z for am,pm

day=$(date +"%A")
date=$(date +"%I:%M:%S %z")

if [ $day == "Monday" ]
then
  title="Monday might be Optimist"

elif [ $day == "Tuesday"  ]
then
  title="Tuesday might be Realistic "

elif [ $day == "Wednesday" ]
then
  title="Wednesday might be Pessimist"

elif [ $day == "Thursday" ]
then
  title="Thursday might be thirsty"

elif [ $day == "Friday" ]
then
  title="Friday might be easy"

elif [ $day == "Saturday" ]
then
  title="Saturday might be party"

else
  title="Sunday might be sleepy "
fi

###############
# Main        #
###############
cat <<EOF

Welcome to planet $hostname, "$title $USER!"
Today is $day at $date
EOF
