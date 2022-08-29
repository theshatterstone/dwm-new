#!/bin/bash

while true; do

	dwmupdates > /home/steve/dwmscripts/dwmupdates.txt

	sleep 3600s

done &
printf "$(pwd)"
while true; do

	CPU=$(./dwmscripts/dwmcpu.sh)
	MEM=$(./dwmscripts/dwmmemory.sh)
	#NET=$(dwmnet)
	TEMP=$(./dwmscripts/dwmtemp.sh)
	HDD=$(./dwmscripts/dwmdisk.sh)
	#UPDATES=$(< /home/steve/dwmscripts/dwmupdates.txt)
	BATT=$(./dwmscripts/dwmbatt.sh)
	TIME=$(./dwmscripts/dwmclock.sh)
	xsetroot -name "| $CPU | $MEM | $TEMP | $HDD | $BATT | $TIME"

	sleep 5s
	
done &
