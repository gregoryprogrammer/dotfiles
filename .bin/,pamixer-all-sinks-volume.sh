#!/bin/bash

function usage () {
    cat <<HELP
usage: pamixer_all_sinks_volume.sh inc|dec STEP
HELP
}

SINKS=$(pactl list sinks short | cut -f1)

if [ -z ${2+x} ]; then VOLSTEP=1; else VOLSTEP=$2; fi

case "$1" in
 increase) OP="--increase $VOLSTEP";;
 decrease) OP="--decrease $VOLSTEP";;
 toggle) OP="-t" ;;
 *) usage; exit ;;
esac

for SINK in $SINKS; do
    pamixer --sink $SINK $OP
done
