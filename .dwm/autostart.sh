#/bin/bash

$(feh --bg-fill --randomize /home/shatterstone/wallpapers/) &
#xsetroot -name "| Mem: $(free -m | awk 'NR==2{printf "%%s/%%sMB\n", $3,$2,$3*100/$2 }') | Temp: $(sensors|awk 'BEGIN{i=0;t=0;b=0}/id [0-9]/{b=$4};/Core/{++i;t+=$3}END{if(i>0){printf("%%0.1f\n",t/i)}else{sub(/[^0-9.]/,"",b);print b}}') C | Disk: $(df -h | awk 'NR==4{print $3, $5}') "

$(./dwmscripts/dwmbar.sh)
