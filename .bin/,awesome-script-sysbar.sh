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

    if [[ -n $VOLUME ]]; then
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
    ACPI_OUTPUT=$(acpi 2>&1)
    if [[ $ACPI_OUTPUT == *"No support"* ]]; then
        BATTERY=""
    else

        CHARGING=$(cut -f3 -d' ' <<< $ACPI_OUTPUT)
        LEVEL=$(cut -f4 -d' ' <<< $ACPI_OUTPUT | tr -d %,)
        REMAINING=$(cut -f5 -d' ' <<< $ACPI_OUTPUT)

        case $CHARGING in
            "Charging,")
                STATE="↑"
            ;;
            "Discharging,")
                STATE="↓"
            ;;
            "Full,")
                STATE=""
            ;;
            "Unknown,")
                STATE="?"
            ;;
        esac

        BATTERY="$SEP bat$STATE $LEVEL"

        if [[ -n $REMAINING ]]; then
            BATTERY="$BATTERY → $REMAINING"
        fi
    fi
fi

OUTPUT="$CORES $SEP $VOLUME $CAPSLOCK $BATTERY"
echo $OUTPUT
