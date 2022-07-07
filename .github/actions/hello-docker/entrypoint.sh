#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"

#To coomunicate with the runner is necessary to log something in a specific format as below

#Message
echo "::debug ::This is a debug message"

#Warning
echo "::warning ::This is a warning message"

#Error
echo "::error ::This is an error message"

#Expandable log
echo "::group::Some expandable log"
echo "Log entry number 1"
echo "Log entry number 2"
echo "Log entry number 3"
echo "::endgroup::Final Message"

#Set a secret (This will mask a string to appears as only asterisks)
echo "::add-mask::$1"

#Show what happen with the mask
#echo "Hello $1"