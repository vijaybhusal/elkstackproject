#!/bin/bash
cd /03-student/Homework/Lucky_Duck_Investigation/Dealer_Schedules_0310
function usage {
	printf "\nUsage: $0 [Date] [GameType] [Time]\n"
	printf "Example: $0 0310 Blackjack '11:00:00 AM'\n\n"
	echo " Game Types are: "
	echo " - Blackjack"
	echo " - Roulette"
	printf " - Poker\n\n"
	exit 1
}
if [ $# == 0 ]; then
	usage
fi

case $2 in 
	Blackjack)
		cat $1_Dealer_schedule | awk -F"\t" '{print $1, $gametype}' gametype=2 |grep "$3";;
	Roulette)
		cat $1_Dealer_schedule | awk -F"\t" '{print $1, $gametype}' gametype=3 |grep "$3";;
	Poker)
		cat $1_Dealer_schedule | awk -F"\t" '{print $1, $gametype}' gametype=4 |grep "$3";;
esac


