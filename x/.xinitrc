#! /usr/bin/env dash

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

export SXHKD_SHELL='/bin/dash'

xrandr --dpi 166

xmodmap ~/.xmodmap

xrdb -merge ~/.Xresources

exec bspwm
