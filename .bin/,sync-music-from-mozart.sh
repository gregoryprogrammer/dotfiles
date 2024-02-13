#!/bin/sh

MOZART=/mnt/mozart
SRC=${MOZART}/Sync/Music/
DST=${HOME}/Storage/Music

if mount | awk '{if ($3 == "'${MOZART}'") { exit 0}} ENDFILE{exit -1}'; then
    echo "${MOZART} is mounted, proceeding to sync ${SRC} to ${DST}"
    sleep 2
else
    echo Please mount /mnt/mozart and run the script again
    exit
fi

rsync -avr ${SRC} ${DST}
