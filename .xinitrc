# https://unix.stackexchange.com/questions/342351/how-to-close-xserver-session-via-command
export XSESSION_PID="$$"

# xrandr --output eDP-1 --mode 1920x1080 --output DP-1 --mode 1920x1080 --rate 59.97 --primary --right-of eDP-1
xrandr --output DP-1 --mode 1920x1080 --right-of eDP-1 --primary
picom -f &
~/.fehbg &
slstatus &
xbindkeys

# loop to restart dwm on quit
while true; do
    dwm >/dev/null 2>&1
done

exec dwm

