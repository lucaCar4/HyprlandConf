#!/bin/bash
VAR=$(pamixer --get-mute);
LOGO="";
LOGO_MUTE="󰖁"
logo () {
    if [[ ${VAR} == "false" ]] ; then
        echo ${LOGO};
    else 
        echo ${LOGO_MUTE};
    fi
}
logo