#!/bin/bash

SEP=" · "

# Sensors
SENSORS=`sensors | grep Core | tr -s ' ' | cut -f3 -d' ' | tr -d +°C | xargs printf '%.0f ' | awk '{print "cores " $0}'`

# CPU usage
if ! command -v mpstat &> /dev/null; then
    CORES="install sysstat"
else
    CORES=$(mpstat -P ALL 1 1 | grep Average | grep -vE "CPU|all" | tr -s ' ' | cut -f3 -d' ' | xargs printf '%02.0f ' | awk '{print "cores " $0}')
fi

# Volume
SINKS=$(pactl list sinks short | cut -f1)
VOLUME=''
for SINK in $SINKS; do
    PAMIXER=$(pamixer --sink $SINK --get-mute --get-volume)
    MUTED=${PAMIXER% *}
    VOL=${PAMIXER##* }

    if [[ -n $VAR ]]; then
        VOLUME="$VOLUME $SEP"
    fi

    if [[ "$MUTED" == "true" ]]; then
        VOLUME=$VOLUME"vol $VOL (muted)"
    else
        VOLUME=$VOLUME"vol $VOL"
    fi
done

# CapsLock state
CAPSLOCK_STATE=$(xset -q | grep Caps | tr -s ' ' | cut -f5 -d' ')
if [[ "$CAPSLOCK_STATE" == "on" ]]; then
    CAPSLOCK="$SEP CAPS"
fi

# Battery
if ! command -v acpi &> /dev/null; then
    BATTERY="$SEP install acpi"
else
    BATTERY_STATE=$(acpi 2>&1)
    if [[ $BATTERY_STATE == *"No support"* ]]; then
        BATTERY=""
    else
        BATTERY="$SEP TODO"
    fi
fi

OUTPUT="$CORES $SEP $VOLUME $CAPSLOCK $BATTERY"
echo $OUTPUT
