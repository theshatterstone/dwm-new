#!/bin/sh

updatesarch="$(checkupdates 2> /dev/null | wc -l)"
updatesaur="$(yay -Qum 2> /dev/null | wc -l)"
updates=$(("$updatesarch" + "$updatesaur"))
#icon="🛠️"
#icon="" 
echo -e  " $updates"
