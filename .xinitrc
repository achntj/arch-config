xrandr --output "Virtual-1" --mode 1920x1080 &
picom -f &
~/.fehbg &
slstatus &

while true; do
    dwm >/dev/null 2>&1
done

exec dwm

