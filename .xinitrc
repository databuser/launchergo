session=${1:-gameshell}

case $session in
hdmi )
	feh --bg-center ~/launchergo/sysgo/gameshell/wallpaper/desktopbg.jpg
	exec ~/launchergo/load.sh &
	exec ~/launcher/sys.py/gsnotify/gsnotify-arm daemon &
#	exec /usr/bin/twm -f ~/launchergo/.twmrc
	exec ~/launchergo/dwm-mod
	;;
gameshell ) 
	feh --bg-center ~/launchergo/sysgo/gameshell/wallpaper/loading.png
	exec ~/launchergo/load.sh &
	exec ~/launcher/sys.py/gsnotify/gsnotify-arm &
#	exec awesome -c ~/launchergo/awesome/rc.lua
	exec ~/launchergo/dwm-mod -w
	;;
*) 
	exec $1;;
esac

