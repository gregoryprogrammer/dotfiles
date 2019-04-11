[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

setxkbmap -layout pl
setxkbmap -option ctrl:swapcaps &
xset r rate 150 25

# dispwin -d1 $HOME/.`hostname`.icm

autocutsel -fork &
autocutsel -selection PRIMARY -fork &

xbindkeys
xmodmap $HOME/.Xmodmap

source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

# TODO bar
# feh --bg-center ~/.config/awesome/rockstar/background.png
# exec bspwm

exec /usr/bin/awesome >> /tmp/awesome_stdout.txt 2>> /tmp/awesome_stderr.txt
