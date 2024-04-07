#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

setxkbmap -layout pl
setxkbmap -option ctrl:swapcaps
setxkbmap -option ctrl:nocaps
xset r rate 150 25

autocutsel -fork &
autocutsel -selection PRIMARY -fork &

xbindkeys

export SSH_AUTH_SOCK
eval $(ssh-agent)

exec /usr/bin/awesome >> /tmp/awesome_stdout.txt 2>> /tmp/awesome_stderr.txt
