#!/bin/bash
VAR=$(upower -i $(upower -e | grep BAT) | grep -E "percentage");
echo ${VAR:15};
