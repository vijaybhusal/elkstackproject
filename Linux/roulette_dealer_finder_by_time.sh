#!/bin/bash
cd /03-student/Homework/Lucky_Duck_Investigation/Roulette_Loss_Investigation/Dealer_Analysis
function usage {
        printf "\nUsage: $0 [Date] [Time]\n"
        printf "Example: $0 0310 '11:00:00 AM'\n\n"
        exit 1
}
if [ $# == 0 ]; then
        usage
fi
 
cat $1_Dealer_schedule | grep "$2"
