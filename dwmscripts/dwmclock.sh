#!/bin/bash 

dte="$(date +"%a, %B %d %l:%M%p"| sed 's/  / /g')"
printf " %s\n" "$dte |"


