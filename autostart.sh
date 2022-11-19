#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}
run firewall-applet
run nm-applet
run xfce4-power-manager
run blueberry-tray
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
run numlockx on
run volumeicon
#run conky -c $HOME/.config/awesome/system-overview
run emacs --daemon
xautolock -time 10 -locker 'betterlockscreen -l dim -- --time-str="%H:%M"' -detectsleep &
run alacritty
