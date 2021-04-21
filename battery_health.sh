#!bin/bash

source=$(pmset -g batt | grep -e "\w*\sPower" -o | cut -d " " -f1)
battery=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
if [[ $source='AC' && $charge -gt 85 ]]
then
	newSource=$(pmset -g batt | grep -e "\w*\sPower" -o | cut -d " " -f1)
	while [ $newSource != 'Battery' ]
	do
	say "Battery above $(( $charge-1 )) percent, please turn off charging." -v Veena
	sleep 5
	newSource=$(pmset -g batt | grep -e "\w*\sPower" -o | cut -d " " -f1)
	done
	source='Battery'
	say "Switched to battery power now." -v Veena
	say "Thankyou Neeraj for your time!" -v Veena
elif [[ $source='Battery' && $charge -lt 25 ]]
then
	newSource=$(pmset -g batt | grep -e "\w*\sPower" -o | cut -d " " -f1)
	while [ $newSource != 'AC' ]
	do
	say "Battery below $(( $charge+1 )) percent, please turn on charging." -v Veena
	sleep 5
	newSource=$(pmset -g batt | grep -e "\w*\sPower" -o | cut -d " " -f1)
	done
	source='AC'
	say "Charging battery now." -v Veena
	say "Thankyou Neeraj for your time!" -v Veena
fi
