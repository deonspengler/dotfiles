# Executed by startx (run your window manager from here)
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Merge custom X resources
xrdb -merge ~/.Xresources

# Disable monitor blanking
xset s off -dpms &

# Hide mouse when idle
unclutter &

# Run urxvt daemon
urxvtd -q -o -f

# Run mpd
mpd

# Restore wallpaper
nitrogen --restore

# Window manager
exec bspwm
