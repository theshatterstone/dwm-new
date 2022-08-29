#!/bin/bash

STATUS=$(cat /sys/class/power_supply/BAT1/status)
BATT=$(cat /sys/class/power_supply/BAT1/capacity)

if [ "$STATUS" = "Discharging" ]; then

    ICON="🔋"
else
    ICON="⚡"
fi

echo " $ICON" "$BATT%"
