#!/bin/bash

options="Shutdown\nReboot\nLogout\nLock\nSuspend\nHibernate"

choice=$(echo -e $options | rofi -dmenu -p "Power Menu:")

case "$choice" in
    "Shutdown")
        doas poweroff
        ;;
    "Reboot")
         doas reboot
        ;;
    "Logout")
        # For X session logout (i.e., i3, Xmonad, etc.):
        pkill -KILL -u $USER
        ;;
    "Lock")
        i3lock  # or use another lock command if you're not using i3lock
        ;;
esac

