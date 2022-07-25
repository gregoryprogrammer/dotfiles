#!/bin/bash

if [ -z "$1" ]; then
        exit
fi

for i in $1/*; do
        ffmpeg -i "$i" "${i%.*}.mp3" &
done
