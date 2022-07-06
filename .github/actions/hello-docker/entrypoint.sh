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