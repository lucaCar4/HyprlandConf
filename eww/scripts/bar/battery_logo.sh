CHARGING_ICON=󰂄;
BATTERY_ICON=󰁹;
CHARGING=$(upower -i $(upower -e | grep BAT) | grep -E "state");
VAR=${CHARGING:20};
bat_logo () {
    if [[ ${#VAR} == 13 ]] ; then
       echo ${CHARGING_ICON};
    else 
        echo ${BATTERY_ICON};
    fi
}

bat_logo
