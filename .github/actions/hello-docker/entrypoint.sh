#!/bin.sh -l

#To communicate with the runner is necessary to log something in a specific format as below
echo "::debug ::Debug Message"
echo "::warning ::Warning Message"
echo "::error ::Error Message"

#Set a secret (what will mask a string)
echo "::add-mask::$1"


#show time
time=$(date)
echo "::set-output name=time::$time"

#Add an expandable log
echo "::group::Some expandable logs"
echo "Some Stuff1"
echo "Some Stuff2"
echo "Some Stuff3"
echo "::endgroup"

#Export and enviroment variable
echo "::set-env name=HELLO::hello"

#This can be done also in python for example but using print instead of echo
#print "::debug ::Debug Message"
echo "Hello $1"