#!/bin/bash
VAR=$(pamixer --get-mute)
audio () {
    if [[ ${VAR} == "false" ]] ; then
        echo "$(pamixer --get-volume)";
    else 
        echo "";
    fi

}

audio