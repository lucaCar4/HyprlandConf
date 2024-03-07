#!/bin/bash
xrandr | grep "HDMI";
if (( ${?} != 1 )) ; then 
	eww open-many barH desktopH powermenuH;
fi
