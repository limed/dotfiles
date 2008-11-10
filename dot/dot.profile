if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

[ -z "$DISPLAY" ] && return

xset +dpms
xset dpms 0 0 300
xbacklight -set 25

display -window root ~/wallpaper/linux.jpg
#xscreensaver -nosplash &
