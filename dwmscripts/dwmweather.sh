#!/bin/bash
weather=$(curl -s wttr.in/Ribchester?format=%t)
icon="🌤️"
printf " %s %s \n" "$icon " "$weather"
