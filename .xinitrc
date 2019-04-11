[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

setxkbmap -layout pl
setxkbmap -option ctrl:nocaps &
xset r rate 150 25

dispwin -d1 $HOME/.`hostname`.icm

autocutsel -fork &
autocutsel -selection PRIMARY -fork &

xbindkeys
xmodmap $HOME/.Xmodmap

exec /usr/bin/awesome >> /tmp/awesome_stdout.txt 2>> /tmp/awesome_stderr.txt
