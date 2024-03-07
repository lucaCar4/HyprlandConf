#!/bin/bash
STAT=$(cat /home/luca/.config/eww/scripts/monitor.txt);
M=$(xrandr | grep "HDMI");
MON=${?};
if [[ ${MON} != 1 && ${STAT} != 1 ]] ; then
    echo "open";
    eww open-many barH desktopH powermenuH;   
    sed -i 's/0/1/' /home/luca/.config/eww/scripts/monitor.txt;
fi

if [[ ${MON} == 1 && ${STAT} == 1 ]] ; then
    echo "close";
    sed -i 's/1/0/' /home/luca/.config/eww/scripts/monitor.txt;
fi
